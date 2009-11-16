/*
 * All code from this file comes from libusb-1.0.5. It is here
 * to provide 'libusb_get_max_iso_packet_size' for those using
 * libusb-1.0.1, and will be removed when at least libusb-1.0.3
 * becomes standard in most popular Linux distributions.
 *
 * This is LGPL code, and should not be mixed with the rest of
 * the source. For details on file authors and history check
 * libusb-1.0.* source package, available on its website.
 */

#include <errno.h>
#include <poll.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

#include "libusb.h"

struct libusb_device {
 pthread_mutex_t a; int b;
 struct libusb_context *ctx;
};

enum usbi_log_level {
 LOG_LEVEL_DEBUG,
 LOG_LEVEL_INFO,
 LOG_LEVEL_WARNING,
 LOG_LEVEL_ERROR,
};


static const struct libusb_endpoint_descriptor *find_endpoint(
 struct libusb_config_descriptor *, unsigned char);

void usbi_log(struct libusb_context *ctx, enum usbi_log_level level,
 const char *function, const char *format, ...)
{
 va_list args;
 FILE *stream = stdout;
 const char *prefix;

 switch (level) {
 case LOG_LEVEL_INFO:
  prefix = "info";
  break;
 case LOG_LEVEL_WARNING:
  stream = stderr;
  prefix = "warning";
  break;
 case LOG_LEVEL_ERROR:
  stream = stderr;
  prefix = "error";
  break;
 case LOG_LEVEL_DEBUG:
  stream = stderr;
  prefix = "debug";
  break;
 default:
  stream = stderr;
  prefix = "unknown";
  break;
 }

 fprintf(stream, "libusb:%s [%s] ", prefix, function);

 va_start (args, format);
 vfprintf(stream, format, args);
 va_end (args);

 fprintf(stream, "\n");
}

int libusb_get_max_iso_packet_size(libusb_device *dev,
 unsigned char endpoint)
{
 struct libusb_config_descriptor *config;
 const struct libusb_endpoint_descriptor *ep;
 enum libusb_transfer_type ep_type;
 uint16_t val;
 int r;

 r = libusb_get_active_config_descriptor(dev, &config);
 if (r < 0) {
  usbi_log((dev)->ctx, 3, __FUNCTION__, "could not retrieve active config descriptor");
  return LIBUSB_ERROR_OTHER;
 }

 ep = find_endpoint(config, endpoint);
 if (!ep)
  return LIBUSB_ERROR_NOT_FOUND;

 val = ep->wMaxPacketSize;
 ep_type = ep->bmAttributes & 0x3;
 libusb_free_config_descriptor(config);

 r = val & 0x07ff;
 if (ep_type == LIBUSB_TRANSFER_TYPE_ISOCHRONOUS
   || ep_type == LIBUSB_TRANSFER_TYPE_INTERRUPT)
  r *= (1 + ((val >> 11) & 3));
 return r;
}

static const struct libusb_endpoint_descriptor *find_endpoint(
 struct libusb_config_descriptor *config, unsigned char endpoint)
{
 int iface_idx;
 for (iface_idx = 0; iface_idx < config->bNumInterfaces; iface_idx++) {
  const struct libusb_interface *iface = &config->interface[iface_idx];
  int altsetting_idx;

  for (altsetting_idx = 0; altsetting_idx < iface->num_altsetting;
    altsetting_idx++) {
   const struct libusb_interface_descriptor *altsetting
    = &iface->altsetting[altsetting_idx];
   int ep_idx;

   for (ep_idx = 0; ep_idx < altsetting->bNumEndpoints; ep_idx++) {
    const struct libusb_endpoint_descriptor *ep =
     &altsetting->endpoint[ep_idx];
    if (ep->bEndpointAddress == endpoint)
     return ep;
   }
  }
 }
 return NULL;
}




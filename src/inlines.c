#include <libusb.h>

unsigned char*
inline_libusb_control_transfer_get_data (
 struct libusb_transfer * transfer )
{
 return libusb_control_transfer_get_data (transfer);
}

struct libusb_control_setup*
inline_libusb_control_transfer_get_setup (
 struct libusb_transfer * transfer )
{
 return libusb_control_transfer_get_setup (transfer);
}

void
inline_libusb_fill_control_setup (unsigned char *buffer,
  uint8_t bmRequestType, uint8_t bRequest, uint16_t wValue,
  uint16_t wIndex, uint16_t wLength)
{
  libusb_fill_control_setup(buffer,bmRequestType,bRequest,
    wValue,wIndex,wLength);
}

void
inline_libusb_fill_control_transfer (struct libusb_transfer *transfer,
  libusb_device_handle *dev_handle, unsigned char *buffer,
  libusb_transfer_cb_fn callback, void *user_data, unsigned int timeout)
{
  libusb_fill_control_transfer(transfer,dev_handle,buffer,
    callback,user_data,timeout);
}

void
inline_libusb_fill_bulk_transfer (struct libusb_transfer *transfer,
  libusb_device_handle *dev_handle, unsigned char endpoint,
  unsigned char *buffer, int length, libusb_transfer_cb_fn callback,
  void *user_data, unsigned int timeout)
{
  libusb_fill_bulk_transfer(transfer,dev_handle,endpoint,buffer,
    length,callback,user_data,timeout);
}

void
inline_libusb_fill_interrupt_transfer (struct libusb_transfer *transfer,
  libusb_device_handle *dev_handle, unsigned char endpoint,
  unsigned char *buffer, int length, libusb_transfer_cb_fn callback,
  void *user_data, unsigned int timeout)
{
  libusb_fill_interrupt_transfer(transfer,dev_handle,endpoint,
    buffer,length,callback,user_data,timeout);
}

void
inline_libusb_fill_iso_transfer (struct libusb_transfer *transfer,
  libusb_device_handle *dev_handle, unsigned char endpoint,
  unsigned char *buffer, int length,
  int num_iso_packets, libusb_transfer_cb_fn callback,
  void *user_data, unsigned int timeout)
{
  libusb_fill_iso_transfer(transfer,dev_handle,endpoint,
    buffer,length,num_iso_packets,callback,user_data,timeout);
}

void
inline_libusb_set_iso_packet_lengths (struct libusb_transfer *transfer,
  unsigned int length)
{
  libusb_set_iso_packet_lengths(transfer,length);
}

unsigned char *
inline_libusb_get_iso_packet_buffer (
  struct libusb_transfer *transfer, unsigned int packet)
{
  return  libusb_get_iso_packet_buffer(transfer,packet);
}

unsigned char *
inline_libusb_get_iso_packet_buffer_simple (
  struct libusb_transfer *transfer, unsigned int packet)
{
  return  libusb_get_iso_packet_buffer_simple(transfer,packet);
}

int 
inline_libusb_get_descriptor (libusb_device_handle *dev,
  uint8_t desc_type, uint8_t desc_index, unsigned char *data,
  int length)
{
  return libusb_get_descriptor(dev,desc_type,desc_index,
    data,length);
}

int 
inline_libusb_get_string_descriptor (libusb_device_handle *dev,
  uint8_t desc_index, uint16_t langid, unsigned char *data,
  int length)
{
  return libusb_get_string_descriptor(dev,desc_index,langid,
    data,length);
}

uint16_t
inline_libusb_cpu_to_le16 (uint16_t x)
{
  return libusb_cpu_to_le16(x);
}

uint16_t
inline_libusb_le16_to_cpu (uint16_t x)
{
  return libusb_le16_to_cpu(x);
}


#include <libusb.h>

/*
  Sizes of structs we are going to
  use in 'sizeOf' method of Storable instances.
*/

int size_of_libusb_device_descriptor (void)
{
    return sizeof (struct libusb_device_descriptor);
}

int size_of_libusb_endpoint_descriptor (void)
{
    return sizeof (struct libusb_endpoint_descriptor);
}

int size_of_libusb_interface_descriptor (void)
{
    return sizeof (struct libusb_interface_descriptor);
}

int size_of_libusb_interface (void)
{
    return sizeof (struct libusb_interface);
}

int size_of_libusb_config_descriptor (void)
{
    return sizeof (struct libusb_config_descriptor);
}

int size_of_libusb_control_setup (void)
{
    return sizeof (struct libusb_control_setup);
}

int size_of_libusb_iso_packet_descriptor (void)
{
    return sizeof (struct libusb_iso_packet_descriptor);
}

int size_of_libusb_transfer (void)
{
    return sizeof (struct libusb_transfer);
}

int size_of_libusb_pollfd (void)
{
    return sizeof (struct libusb_pollfd);
}

/*
  Functions that fill a C struct
  after received parameters. They will
  be used in 'poke' method of Storable
  instances.
*/

void hs2c_libusb_device_descriptor (struct libusb_device_descriptor *p,
    uint8_t p1,
    uint8_t p2,
    uint16_t p3,
    uint8_t p4,
    uint8_t p5,
    uint8_t p6,
    uint8_t p7,
    uint16_t p8,
    uint16_t p9,
    uint16_t p10,
    uint8_t p11,
    uint8_t p12,
    uint8_t p13,
    uint8_t p14)
{
    p->bLength = p1;
    p->bDescriptorType = p2;
    p->bcdUSB = p3;
    p->bDeviceClass = p4;
    p->bDeviceSubClass = p5;
    p->bDeviceProtocol = p6;
    p->bMaxPacketSize0 = p7;
    p->idVendor = p8;
    p->idProduct = p9;
    p->bcdDevice = p10;
    p->iManufacturer = p11;
    p->iProduct = p12;
    p->iSerialNumber = p13;
    p->bNumConfigurations = p14;
}

void hs2c_libusb_endpoint_descriptor (struct libusb_endpoint_descriptor *p,
    uint8_t p1,
    uint8_t p2,
    uint8_t p3,
    uint8_t p4,
    uint16_t p5,
    uint8_t p6,
    uint8_t p7,
    uint8_t p8,
    const unsigned char *p9,
    int p10)
{
    p->bLength = p1;
    p->bDescriptorType = p2;
    p->bEndpointAddress = p3;
    p->bmAttributes = p4;
    p->wMaxPacketSize = p5;
    p->bInterval = p6;
    p->bRefresh = p7;
    p->bSynchAddress = p8;
    p->extra = p9;
    p->extra_length = p10;
}

void hs2c_libusb_interface_descriptor (struct libusb_interface_descriptor *p,
    uint8_t p1,
    uint8_t p2,
    uint8_t p3,
    uint8_t p4,
    uint8_t p5,
    uint8_t p6,
    uint8_t p7,
    uint8_t p8,
    uint8_t p9,
    struct libusb_endpoint_descriptor *p10,
    const unsigned char *p11,
    int p12)
{
    p->bLength = p1;
    p->bDescriptorType = p2;
    p->bInterfaceNumber = p3;
    p->bAlternateSetting = p4;
    p->bNumEndpoints = p5;
    p->bInterfaceClass = p6;
    p->bInterfaceSubClass = p7;
    p->bInterfaceProtocol = p8;
    p->iInterface = p9;
    p->endpoint = p10;
    p->extra = p11;
    p->extra_length = p12;
}

void hs2c_libusb_interface (struct libusb_interface *p,
    struct libusb_interface_descriptor *p1,
    int p2)
{
    p->altsetting = p1;
    p->num_altsetting = p2;
}

void hs2c_libusb_config_descriptor (struct libusb_config_descriptor *p,
    uint8_t p1,
    uint8_t p2,
    uint16_t p3,
    uint8_t p4,
    uint8_t p5,
    uint8_t p6,
    uint8_t p7,
    uint8_t p8,
    struct libusb_interface *p9,
    const unsigned char *p10,
    int p11)
{
    p->bLength = p1;
    p->bDescriptorType = p2;
    p->wTotalLength = p3;
    p->bNumInterfaces = p4;
    p->bConfigurationValue = p5;
    p->iConfiguration = p6;
    p->bmAttributes = p7;
    p->MaxPower = p8;
    p->interface = p9;
    p->extra = p10;
    p->extra_length = p11;
}

void hs2c_libusb_control_setup (
struct libusb_control_setup *p,
    uint8_t p1,
    uint8_t p2,
    uint16_t p3,
    uint16_t p4,
    uint16_t p5)
{
    p->bmRequestType = p1;
    p->bRequest = p2;
    p->wValue = p3;
    p->wIndex = p4;
    p->wLength = p5;
}

void hs2c_libusb_iso_packet_descriptor (
struct libusb_iso_packet_descriptor *p,
    unsigned int p1,
    unsigned int p2,
    enum libusb_transfer_status p3)
{
    p->length = p1;
    p->actual_length = p2;
    p->status = p3;
}

void hs2c_libusb_transfer (struct libusb_transfer *p,
    libusb_device_handle *p1,
    uint8_t p2,
    unsigned char p3,
    unsigned char p4,
    unsigned int p5,
    enum libusb_transfer_status p6,
    int p7,
    int p8,
    libusb_transfer_cb_fn p9,
    void *p10,
    unsigned char *p11,
    int p12)
{
    p->dev_handle = p1;
    p->flags = p2;
    p->endpoint = p3;
    p->type = p4;
    p->timeout = p5;
    p->status = p6;
    p->length = p7;
    p->actual_length = p8;
    p->callback = p9;
    p->user_data = p10;
    p->buffer = p11;
    p->num_iso_packets = p12;
}

void hs2c_libusb_pollfd (struct libusb_pollfd *p,
    int p1,
    short p2)
{
    p->fd = p1;
    p->events = p2;
}

/*
  Functions that read the values of
  a C struct into pointers. They will
  be used at 'peek' method of Storable
  instances.
*/

void c2hs_libusb_device_descriptor (struct libusb_device_descriptor *p,
    uint8_t *p1,
    uint8_t *p2,
    uint16_t *p3,
    uint8_t *p4,
    uint8_t *p5,
    uint8_t *p6,
    uint8_t *p7,
    uint16_t *p8,
    uint16_t *p9,
    uint16_t *p10,
    uint8_t *p11,
    uint8_t *p12,
    uint8_t *p13,
    uint8_t *p14)
{
    *p1 = p->bLength;
    *p2 = p->bDescriptorType;
    *p3 = p->bcdUSB;
    *p4 = p->bDeviceClass;
    *p5 = p->bDeviceSubClass;
    *p6 = p->bDeviceProtocol;
    *p7 = p->bMaxPacketSize0;
    *p8 = p->idVendor;
    *p9 = p->idProduct;
    *p10 = p->bcdDevice;
    *p11 = p->iManufacturer;
    *p12 = p->iProduct;
    *p13 = p->iSerialNumber;
    *p14 = p->bNumConfigurations;
}

void c2hs_libusb_endpoint_descriptor (
struct libusb_endpoint_descriptor *p,
    uint8_t *p1,
    uint8_t *p2,
    uint8_t *p3,
    uint8_t *p4,
    uint16_t *p5,
    uint8_t *p6,
    uint8_t *p7,
    uint8_t *p8,
    const unsigned char **p9,
    int *p10)
{
    *p1 = p->bLength;
    *p2 = p->bDescriptorType;
    *p3 = p->bEndpointAddress;
    *p4 = p->bmAttributes;
    *p5 = p->wMaxPacketSize;
    *p6 = p->bInterval;
    *p7 = p->bRefresh;
    *p8 = p->bSynchAddress;
    *p9 = p->extra;
    *p10 = p->extra_length;
}

void c2hs_libusb_interface_descriptor (
struct libusb_interface_descriptor *p,
    uint8_t *p1,
    uint8_t *p2,
    uint8_t *p3,
    uint8_t *p4,
    uint8_t *p5,
    uint8_t *p6,
    uint8_t *p7,
    uint8_t *p8,
    uint8_t *p9,
    const struct libusb_endpoint_descriptor **p10,
    const unsigned char **p11,
    int *p12)
{
    *p1 = p->bLength;
    *p2 = p->bDescriptorType;
    *p3 = p->bInterfaceNumber;
    *p4 = p->bAlternateSetting;
    *p5 = p->bNumEndpoints;
    *p6 = p->bInterfaceClass;
    *p7 = p->bInterfaceSubClass;
    *p8 = p->bInterfaceProtocol;
    *p9 = p->iInterface;
    *p10 = p->endpoint;
    *p11 = p->extra;
    *p12 = p->extra_length;
}

void c2hs_libusb_interface (struct libusb_interface *p,
    const struct libusb_interface_descriptor **p1,
    int *p2)
{
    *p1 = p->altsetting;
    *p2 = p->num_altsetting;
}

void c2hs_libusb_config_descriptor (struct libusb_config_descriptor *p,
    uint8_t *p1,
    uint8_t *p2,
    uint16_t *p3,
    uint8_t *p4,
    uint8_t *p5,
    uint8_t *p6,
    uint8_t *p7,
    uint8_t *p8,
    const struct libusb_interface **p9,
    const unsigned char **p10,
    int *p11)
{
    *p1 = p->bLength;
    *p2 = p->bDescriptorType;
    *p3 = p->wTotalLength;
    *p4 = p->bNumInterfaces;
    *p5 = p->bConfigurationValue;
    *p6 = p->iConfiguration;
    *p7 = p->bmAttributes;
    *p8 = p->MaxPower;
    *p9 = p->interface;
    *p10 = p->extra;
    *p11 = p->extra_length;
}

void c2hs_libusb_control_setup (struct libusb_control_setup *p,
    uint8_t *p1,
    uint8_t *p2,
    uint16_t *p3,
    uint16_t *p4,
    uint16_t *p5)
{
    *p1 = p->bmRequestType;
    *p2 = p->bRequest;
    *p3 = p->wValue;
    *p4 = p->wIndex;
    *p5 = p->wLength;
}

void c2hs_libusb_iso_packet_descriptor (
struct libusb_iso_packet_descriptor *p,
    unsigned int *p1,
    unsigned int *p2,
    enum libusb_transfer_status *p3)
{
    *p1 = p->length;
    *p2 = p->actual_length;
    *p3 = p->status;
}

void c2hs_libusb_transfer (struct libusb_transfer *p,
    libusb_device_handle **p1,
    uint8_t *p2,
    unsigned char *p3,
    unsigned char *p4,
    unsigned int *p5,
    enum libusb_transfer_status *p6,
    int *p7,
    int *p8,
    libusb_transfer_cb_fn *p9,
    void **p10,
    unsigned char **p11,
    int *p12)
{
    *p1 = p->dev_handle;
    *p2 = p->flags;
    *p3 = p->endpoint;
    *p4 = p->type;
    *p5 = p->timeout;
    *p6 = p->status;
    *p7 = p->length;
    *p8 = p->actual_length;
    *p9 = p->callback;
    *p10 = p->user_data;
    *p11 = p->buffer;
    *p12 = p->num_iso_packets;
}

void c2hs_libusb_pollfd (struct libusb_pollfd *p,
    int *p1,
    short *p2)
{
    *p1 = p->fd;
    *p2 = p->events;
}


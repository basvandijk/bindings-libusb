#include <libusb.h>

uint16_t _libusb_cpu_to_le16 (uint16_t x)
{
    return libusb_cpu_to_le16 (x);
}

uint16_t _libusb_le16_to_cpu (uint16_t x)
{
    return libusb_le16_to_cpu (x);
}

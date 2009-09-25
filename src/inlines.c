#include <libusb.h>

unsigned char* inline_libusb_control_transfer_get_data (
 struct libusb_transfer * transfer )
{
 return libusb_control_transfer_get_data (transfer);
}

struct libusb_control_setup* inline_libusb_control_transfer_get_setup (
 struct libusb_transfer * transfer )
{
 return libusb_control_transfer_get_setup (transfer);
}

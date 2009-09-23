#include <bindings.macros.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/annotated.html>

module Bindings.Libusb.DataStructures where
import Foreign
import Foreign.C

#starttype struct libusb_config_descriptor
#field bLength , Word8
#field bDescriptorType , Word8
#field wTotalLength , Word16
#field bNumInterfaces , Word8
#field bConfigurationValue , Word8
#field iConfiguration , Word8
#field bmAttributes , Word8
#field MaxPower , Word8
#field interface , Ptr <libusb_interface>
#field extra , Ptr CUChar
#field extra_length , CInt
#stoptype

#starttype struct libusb_control_setup
#stoptype

#starttype struct libusb_device_descriptor
#stoptype

#starttype struct libusb_endpoint_descriptor
#stoptype

#starttype struct libusb_interface
#field altsetting , Ptr <libusb_interface_descriptor>
#field num_altsetting , CInt
#stoptype

#starttype struct libusb_interface_descriptor
#stoptype

#starttype struct libusb_iso_packet_descriptor
#stoptype

#starttype struct libusb_pollfd
#stoptype

#starttype struct libusb_transfer
#stoptype


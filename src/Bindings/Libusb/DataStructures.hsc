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
#field bmRequestType , Word8
#field bRequest , Word8
#field wValue , Word16
#field wIndex , Word16
#field wLength , Word16
#stoptype

#starttype struct libusb_device_descriptor
#field bLength , Word8
#field bDescriptorType , Word8
#field bcdUSB , Word16
#field bDeviceClass , Word8
#field bDeviceSubClass , Word8
#field bDeviceProtocol , Word8
#field bMaxPacketSize0 , Word8
#field idVendor , Word16
#field idProduct , Word16
#field bcdDevice , Word16
#field iManufacturer , Word8
#field iProduct , Word8
#field iSerialNumber , Word8
#field bNumConfigurations , Word8
#stoptype

#starttype struct libusb_endpoint_descriptor
#field bLength , Word8
#field bDescriptorType , Word8
#field bEndpointAddress , Word8
#field bmAttributes , Word8
#field wMaxPacketSize , Word16
#field bInterval , Word8
#field bRefresh , Word8
#field bSynchAddress , Word8
#field extra , Ptr CUChar
#field extra_length , CInt
#stoptype

#starttype struct libusb_interface
#field altsetting , Ptr <libusb_interface_descriptor>
#field num_altsetting , CInt
#stoptype

#starttype struct libusb_interface_descriptor
#field bLength , Word8
#field bDescriptorType , Word8
#field bInterfaceNumber , Word8
#field bAlternateSetting , Word8
#field bNumEndpoints , Word8
#field bInterfaceClass , Word8
#field bInterfaceSubClass , Word8
#field bInterfaceProtocol , Word8
#field iInterface , Word8
#field endpoint , Ptr <libusb_endpoint_descriptor>
#field extra , Ptr CUChar
#field extra_length , CInt
#stoptype

#starttype struct libusb_iso_packet_descriptor
#field length , CUInt
#field actual_length , CUInt
#field status , <libusb_transfer_status>
#stoptype

#starttype struct libusb_pollfd
#field fd , CInt
#field events , CShort
#stoptype

#starttype struct libusb_transfer
#field dev_handle , Ptr <libusb_device_handle>
#field flags , Word8
#field endpoint , CUChar
#field type , CUChar
#field timeout , CUInt
#field status , <libusb_transfer_status>
#field length , CInt
#field actual_length , CInt
#field callback , <libusb_transfer_cb_fn>
#field user_data , Ptr ()
#field buffer , Ptr CUChar
#field num_iso_packets , CInt
#stoptype


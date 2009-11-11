#include <bindings.dsl.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__desc.html>

module Bindings.Libusb.Descriptors where
#strict_import
import Bindings.Libusb.HandlingAndEnumeration

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

#starttype struct libusb_interface
#field altsetting , Ptr <libusb_interface_descriptor>
#field num_altsetting , CInt
#stoptype

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

#integral_t enum libusb_class_code

#num LIBUSB_CLASS_PER_INTERFACE
#num LIBUSB_CLASS_AUDIO
#num LIBUSB_CLASS_COMM
#num LIBUSB_CLASS_HID
#num LIBUSB_CLASS_PRINTER
#num LIBUSB_CLASS_PTP
#num LIBUSB_CLASS_MASS_STORAGE
#num LIBUSB_CLASS_HUB
#num LIBUSB_CLASS_DATA
#num LIBUSB_CLASS_VENDOR_SPEC

#integral_t enum libusb_descriptor_type

#num LIBUSB_DT_DEVICE
#num LIBUSB_DT_CONFIG
#num LIBUSB_DT_STRING
#num LIBUSB_DT_INTERFACE
#num LIBUSB_DT_ENDPOINT
#num LIBUSB_DT_HID
#num LIBUSB_DT_REPORT
#num LIBUSB_DT_PHYSICAL
#num LIBUSB_DT_HUB

#integral_t enum libusb_endpoint_direction

#num LIBUSB_ENDPOINT_IN
#num LIBUSB_ENDPOINT_OUT

#integral_t enum libusb_transfer_type

#num LIBUSB_TRANSFER_TYPE_CONTROL
#num LIBUSB_TRANSFER_TYPE_ISOCHRONOUS
#num LIBUSB_TRANSFER_TYPE_BULK
#num LIBUSB_TRANSFER_TYPE_INTERRUPT

#integral_t enum libusb_iso_sync_type

#num LIBUSB_ISO_SYNC_TYPE_NONE
#num LIBUSB_ISO_SYNC_TYPE_ASYNC
#num LIBUSB_ISO_SYNC_TYPE_ADAPTIVE
#num LIBUSB_ISO_SYNC_TYPE_SYNC

#integral_t enum libusb_iso_usage_type

#num LIBUSB_ISO_USAGE_TYPE_DATA
#num LIBUSB_ISO_USAGE_TYPE_FEEDBACK
#num LIBUSB_ISO_USAGE_TYPE_IMPLICIT

#ccall libusb_get_device_descriptor , Ptr <libusb_device> -> \
  Ptr <libusb_device_descriptor> -> IO CInt

#ccall libusb_get_active_config_descriptor , Ptr <libusb_device> -> \
  Ptr (Ptr <libusb_config_descriptor>) -> IO CInt

#ccall libusb_get_config_descriptor , Ptr <libusb_device> -> \
  Word8 -> Ptr (Ptr <libusb_config_descriptor>) -> IO CInt

#ccall libusb_get_config_descriptor_by_value , Ptr <libusb_device> -> \
  Word8 -> Ptr (Ptr <libusb_config_descriptor>) -> \
  IO CInt

#ccall libusb_free_config_descriptor , Ptr <libusb_config_descriptor> -> \
  IO ()

#ccall libusb_get_string_descriptor_ascii , Ptr <libusb_device_handle> -> \
  Word8 -> Ptr CUChar -> CInt -> IO CInt

#cinline libusb_get_descriptor , Ptr <libusb_device_handle> -> \
  Word8 -> Word8 -> Ptr CUChar -> \
  CInt -> IO CInt

#cinline libusb_get_string_descriptor , Ptr <libusb_device_handle> -> \
  Word8 -> Word16 -> Ptr CUChar -> \
  CInt -> IO CInt

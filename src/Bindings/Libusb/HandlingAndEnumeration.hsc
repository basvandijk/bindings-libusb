{-# LANGUAGE ForeignFunctionInterface #-}

#include <bindings.dsl.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__dev.html>

module Bindings.Libusb.HandlingAndEnumeration where
#strict_import
import Bindings.Libusb.InitializationDeinitialization

#opaque_t libusb_device
#opaque_t libusb_device_handle

#integral_t ssize_t

#integral_t enum libusb_speed
#num LIBUSB_SPEED_UNKNOWN
#num LIBUSB_SPEED_LOW
#num LIBUSB_SPEED_FULL
#num LIBUSB_SPEED_HIGH
#num LIBUSB_SPEED_SUPER

#integral_t enum libusb_supported_speed
#num LIBUSB_LOW_SPEED_OPERATION
#num LIBUSB_FULL_SPEED_OPERATION
#num LIBUSB_HIGH_SPEED_OPERATION
#num LIBUSB_SUPER_SPEED_OPERATION

#integral_t enum libusb_usb_2_0_extension_attributes
#num LIBUSB_BM_LPM_SUPPORT

#integral_t enum libusb_ss_usb_device_capability_attributes
#num LIBUSB_BM_LTM_SUPPORT

#integral_t enum libusb_bos_type
#num LIBUSB_BT_WIRELESS_USB_DEVICE_CAPABILITY
#num LIBUSB_BT_USB_2_0_EXTENSION
#num LIBUSB_BT_SS_USB_DEVICE_CAPABILITY
#num LIBUSB_BT_CONTAINER_ID

#ccall libusb_get_device_list , Ptr <libusb_context> -> \
  Ptr (Ptr (Ptr <libusb_device>)) -> IO <ssize_t>
#ccall libusb_free_device_list , Ptr (Ptr <libusb_device>) -> \
  CInt -> IO ()
#ccall libusb_get_bus_number , Ptr <libusb_device> -> IO Word8
#ccall libusb_get_port_number , Ptr <libusb_device> -> IO Word8
#ccall libusb_get_port_numbers , Ptr <libusb_device> -> Ptr Word8 -> \
  CInt -> IO CInt
#ccall libusb_get_parent , Ptr <libusb_device> -> IO (Ptr <libusb_device>)
#ccall libusb_get_device_address , Ptr <libusb_device> -> IO Word8
#ccall libusb_get_device_speed , Ptr <libusb_device> -> IO CInt
#ccall libusb_get_max_packet_size , Ptr <libusb_device> -> \
  CUChar -> IO CInt
#ccall libusb_get_max_iso_packet_size , Ptr <libusb_device> -> CUChar -> IO CInt
#ccall libusb_ref_device , Ptr <libusb_device> -> \
  IO (Ptr <libusb_device>)
#ccall libusb_unref_device , Ptr <libusb_device> -> IO ()
#ccall libusb_open , Ptr <libusb_device> -> \
  Ptr (Ptr <libusb_device_handle>) -> IO CInt
#ccall libusb_open_device_with_vid_pid , Ptr <libusb_context> -> \
  Word16 -> Word16 -> \
  IO (Ptr <libusb_device_handle>)
#ccall libusb_close , Ptr <libusb_device_handle> -> IO ()
#ccall libusb_get_device , Ptr <libusb_device_handle> -> \
  IO (Ptr <libusb_device>)
#ccall libusb_get_configuration , Ptr <libusb_device_handle> -> \
  Ptr CInt -> IO CInt
#ccall libusb_set_configuration , Ptr <libusb_device_handle> -> \
  CInt -> IO CInt
#ccall libusb_claim_interface , Ptr <libusb_device_handle> -> \
  CInt -> IO CInt
#ccall libusb_release_interface , Ptr <libusb_device_handle> -> \
  CInt -> IO CInt
#ccall libusb_set_interface_alt_setting , Ptr <libusb_device_handle> -> \
  CInt -> CInt -> IO CInt
#ccall libusb_clear_halt , Ptr <libusb_device_handle> -> \
  CUChar -> IO CInt
#ccall libusb_reset_device , Ptr <libusb_device_handle> -> IO CInt
#ccall libusb_kernel_driver_active , Ptr <libusb_device_handle> -> \
  CInt -> IO CInt
#ccall libusb_detach_kernel_driver , Ptr <libusb_device_handle> -> \
  CInt -> IO CInt
#ccall libusb_attach_kernel_driver , Ptr <libusb_device_handle> -> \
  CInt -> IO CInt
#ccall libusb_set_auto_detach_kernel_driver , Ptr <libusb_device_handle> -> \
  CInt -> IO CInt

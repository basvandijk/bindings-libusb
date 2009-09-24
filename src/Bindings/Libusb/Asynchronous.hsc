#include <bindings.macros.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/annotated.html>

module Bindings.Libusb.Asynchronous where
import Foreign
import Foreign.C
import Bindings.Libusb.HandlingAndEnumeration

#starttype struct libusb_control_setup
#field bmRequestType , Word8
#field bRequest , Word8
#field wValue , Word16
#field wIndex , Word16
#field wLength , Word16
#stoptype

#starttype struct libusb_iso_packet_descriptor
#field length , CUInt
#field actual_length , CUInt
#field status , <libusb_transfer_status>
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

#callback libusb_transfer_cb_fn , Ptr <libusb_transfer> -> IO ()

#integral_t enum libusb_transfer_status
#integral_t enum libusb_transfer_flags

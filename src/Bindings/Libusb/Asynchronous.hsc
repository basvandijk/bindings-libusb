#include <bindings.macros.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__asyncio.html>

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

#num LIBUSB_TRANSFER_COMPLETED
#num LIBUSB_TRANSFER_ERROR
#num LIBUSB_TRANSFER_TIMED_OUT
#num LIBUSB_TRANSFER_CANCELLED
#num LIBUSB_TRANSFER_STALL
#num LIBUSB_TRANSFER_NO_DEVICE
#num LIBUSB_TRANSFER_OVERFLOW

#integral_t enum libusb_transfer_flags

#num LIBUSB_TRANSFER_SHORT_NOT_OK
#num LIBUSB_TRANSFER_FREE_BUFFER
#num LIBUSB_TRANSFER_FREE_TRANSFER

#ccall libusb_alloc_transfer , CInt -> IO (Ptr <libusb_transfer>)
#ccall libusb_free_transfer , Ptr <libusb_transfer> -> IO ()
#ccall libusb_submit_transfer , Ptr <libusb_transfer> -> IO CInt
#ccall libusb_cancel_transfer , Ptr <libusb_transfer> -> IO CInt
#ccall libusb_control_transfer_get_data , \
  Ptr <libusb_transfer> -> IO (Ptr CUChar)
#ccall libusb_control_transfer_get_setup , \
  Ptr <libusb_transfer> -> IO (Ptr <libusb_control_setup>)
#ccall libusb_fill_control_transfer , \
  Ptr <libusb_transfer> -> Ptr <libusb_device_handle> -> \
  Ptr CUChar -> <libusb_transfer_cb_fn> -> Ptr () -> CUInt -> IO ()
#ccall libusb_fill_bulk_transfer , \
  Ptr <libusb_transfer> -> Ptr <libusb_device_handle> -> \
  CUChar -> Ptr CUChar -> CInt -> \
  <libusb_transfer_cb_fn> -> Ptr () -> CUInt -> IO ()
#ccall libusb_fill_interrupt_transfer , \
  Ptr <libusb_transfer> -> Ptr <libusb_device_handle> -> \
  CUChar -> Ptr CUChar -> CInt -> <libusb_transfer_cb_fn> -> \
  Ptr () -> CUInt -> IO ()
#ccall libusb_fill_iso_transfer , \
  Ptr <libusb_transfer> -> Ptr <libusb_device_handle> -> \
  CUChar -> Ptr CUChar -> CInt -> CInt -> \
  <libusb_transfer_cb_fn> -> Ptr () -> CUInt -> IO ()
#ccall libusb_set_iso_packet_lengths , \
  Ptr <libusb_transfer> -> CUInt -> IO ()
#ccall libusb_get_iso_packet_buffer , \
  Ptr <libusb_transfer> -> CUInt -> IO (Ptr CUChar)
#ccall libusb_get_iso_packet_buffer_simple , \
  Ptr <libusb_transfer> -> CUInt -> IO (Ptr CUChar)

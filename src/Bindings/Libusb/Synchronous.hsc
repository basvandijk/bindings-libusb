#include <bindings.dsl.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__syncio.html>

module Bindings.Libusb.Synchronous where
#strict_import
import Bindings.Libusb.HandlingAndEnumeration

#ccall libusb_control_transfer , Ptr <libusb_device_handle> -> \
   Word8 ->  Word8 ->  Word16 ->  Word16 ->  Ptr CUChar -> \
   Word16 ->  CUInt -> IO CInt
#ccall libusb_bulk_transfer ,  Ptr <libusb_device_handle> -> \
   CUChar ->  Ptr CUChar ->  CInt ->  Ptr CInt ->  CUInt -> IO CInt
#ccall libusb_interrupt_transfer ,  Ptr <libusb_device_handle> -> \
   CUChar ->  Ptr CUChar ->  CInt ->  Ptr CInt ->  CUInt -> IO CInt


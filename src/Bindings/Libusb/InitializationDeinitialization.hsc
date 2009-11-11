#include <bindings.dsl.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__lib.html>

module Bindings.Libusb.InitializationDeinitialization where
#strict_import

#opaque_t libusb_context

#ccall libusb_set_debug , Ptr <libusb_context> -> CInt -> IO ()
#ccall libusb_init , Ptr (Ptr <libusb_context>) -> IO CInt
#ccall libusb_exit , Ptr <libusb_context> -> IO ()

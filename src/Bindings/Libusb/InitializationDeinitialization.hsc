{-# LANGUAGE ForeignFunctionInterface #-}

#include <bindings.dsl.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__lib.html>

module Bindings.Libusb.InitializationDeinitialization where
#strict_import

#opaque_t libusb_context

#integral_t enum libusb_log_level

#num LIBUSB_LOG_LEVEL_NONE
#num LIBUSB_LOG_LEVEL_ERROR
#num LIBUSB_LOG_LEVEL_WARNING
#num LIBUSB_LOG_LEVEL_INFO
#num LIBUSB_LOG_LEVEL_DEBUG

#starttype struct libusb_version
#field major    , Word16
#field minor    , Word16
#field micro    , Word16
#field nano     , Word16
#field rc       , CString
#field describe , CString
#stoptype

#ccall libusb_set_debug , Ptr <libusb_context> -> CInt -> IO ()
#ccall libusb_init , Ptr (Ptr <libusb_context>) -> IO CInt
#ccall libusb_exit , Ptr <libusb_context> -> IO ()
#ccall libusb_get_version , IO (Ptr <libusb_version>)

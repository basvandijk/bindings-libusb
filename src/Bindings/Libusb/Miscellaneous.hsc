{-# LANGUAGE ForeignFunctionInterface #-}

#include <bindings.dsl.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__misc.html>

module Bindings.Libusb.Miscellaneous where
#strict_import

#integral_t enum libusb_capability

#num LIBUSB_CAP_HAS_CAPABILITY
#num LIBUSB_CAP_HAS_HOTPLUG
#num LIBUSB_CAP_HAS_HID_ACCESS
#num LIBUSB_CAP_SUPPORTS_DETACH_KERNEL_DRIVER

#ccall libusb_has_capability , <libusb_capability> -> CInt

#cinline libusb_cpu_to_le16 , Word16 -> Word16
#cinline libusb_le16_to_cpu , Word16 -> Word16

#integral_t enum libusb_standard_request

#num LIBUSB_REQUEST_GET_STATUS
#num LIBUSB_REQUEST_CLEAR_FEATURE
#num LIBUSB_REQUEST_SET_FEATURE
#num LIBUSB_REQUEST_SET_ADDRESS
#num LIBUSB_REQUEST_GET_DESCRIPTOR
#num LIBUSB_REQUEST_SET_DESCRIPTOR
#num LIBUSB_REQUEST_GET_CONFIGURATION
#num LIBUSB_REQUEST_SET_CONFIGURATION
#num LIBUSB_REQUEST_GET_INTERFACE
#num LIBUSB_REQUEST_SET_INTERFACE
#num LIBUSB_REQUEST_SYNCH_FRAME

#integral_t enum libusb_request_type

#num LIBUSB_REQUEST_TYPE_STANDARD
#num LIBUSB_REQUEST_TYPE_CLASS
#num LIBUSB_REQUEST_TYPE_VENDOR
#num LIBUSB_REQUEST_TYPE_RESERVED

#integral_t enum libusb_request_recipient

#num LIBUSB_RECIPIENT_DEVICE
#num LIBUSB_RECIPIENT_INTERFACE
#num LIBUSB_RECIPIENT_ENDPOINT
#num LIBUSB_RECIPIENT_OTHER

#integral_t enum libusb_error

#num LIBUSB_SUCCESS
#num LIBUSB_ERROR_IO
#num LIBUSB_ERROR_INVALID_PARAM
#num LIBUSB_ERROR_ACCESS
#num LIBUSB_ERROR_NO_DEVICE
#num LIBUSB_ERROR_NOT_FOUND
#num LIBUSB_ERROR_BUSY
#num LIBUSB_ERROR_TIMEOUT
#num LIBUSB_ERROR_OVERFLOW
#num LIBUSB_ERROR_PIPE
#num LIBUSB_ERROR_INTERRUPTED
#num LIBUSB_ERROR_NO_MEM
#num LIBUSB_ERROR_NOT_SUPPORTED
#num LIBUSB_ERROR_OTHER

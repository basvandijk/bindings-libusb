#include <bindings.macros.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/annotated.html>

module Bindings.Libusb.HandlingAndEnumeration where
import Foreign
import Foreign.C

#opaque_t libusb_device
#opaque_t libusb_device_handle

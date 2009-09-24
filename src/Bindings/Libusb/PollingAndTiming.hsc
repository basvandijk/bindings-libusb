#include <bindings.macros.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/annotated.html>

module Bindings.Libusb.PollingAndTiming where
import Foreign
import Foreign.C

#starttype struct libusb_pollfd
#field fd , CInt
#field events , CShort
#stoptype


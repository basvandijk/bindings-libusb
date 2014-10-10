{-# LANGUAGE ForeignFunctionInterface #-}

#include <bindings.dsl.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__poll.html>

module Bindings.Libusb.PollingAndTiming where
#strict_import
import Bindings.Libusb.InitializationDeinitialization

#opaque_t struct timeval

#starttype struct libusb_pollfd
#field fd , CInt
#field events , CShort
#stoptype

#callback libusb_pollfd_added_cb , CInt -> CShort -> Ptr () -> IO ()
#callback libusb_pollfd_removed_cb , CInt -> Ptr () -> IO ()

#ccall libusb_try_lock_events , Ptr <libusb_context> -> IO CInt
#ccall libusb_lock_events , Ptr <libusb_context> -> IO ()
#ccall libusb_unlock_events , Ptr <libusb_context> -> IO ()
#ccall libusb_event_handling_ok , Ptr <libusb_context> -> IO CInt
#ccall libusb_event_handler_active , Ptr <libusb_context> -> IO CInt
#ccall libusb_lock_event_waiters , Ptr <libusb_context> -> IO ()
#ccall libusb_unlock_event_waiters , Ptr <libusb_context> -> IO ()
#ccall libusb_wait_for_event , Ptr <libusb_context> ->  \
  Ptr <timeval> -> IO CInt
#ccall libusb_handle_events_timeout , Ptr <libusb_context> ->  \
  Ptr <timeval> -> IO CInt
#ccall libusb_handle_events_completed , Ptr <libusb_context> ->  \
  Ptr CInt -> IO CInt
#ccall libusb_handle_events_timeout_completed , Ptr <libusb_context> ->  \
  Ptr <timeval> -> Ptr CInt -> IO CInt
#ccall libusb_handle_events , Ptr <libusb_context> -> IO CInt
#ccall libusb_handle_events_locked , Ptr <libusb_context> ->  \
  Ptr <timeval> -> IO CInt
#ccall libusb_pollfds_handle_timeouts , Ptr <libusb_context> -> IO CInt
#ccall libusb_get_next_timeout , Ptr <libusb_context> ->  \
  Ptr <timeval> -> IO CInt
#ccall libusb_set_pollfd_notifiers , Ptr <libusb_context> ->  \
  <libusb_pollfd_added_cb> -> <libusb_pollfd_removed_cb> ->  \
  Ptr () -> IO ()
#ccall libusb_get_pollfds , Ptr <libusb_context> ->  \
  IO (Ptr (Ptr <libusb_pollfd>))

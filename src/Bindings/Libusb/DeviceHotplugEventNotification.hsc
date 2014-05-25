{-# LANGUAGE ForeignFunctionInterface #-}

#include <bindings.dsl.h>
#include <libusb.h>

-- | <http://libusb.sourceforge.net/api-1.0/group__hotplug.html>

module Bindings.Libusb.DeviceHotplugEventNotification where
#strict_import

import Bindings.Libusb.InitializationDeinitialization
import Bindings.Libusb.HandlingAndEnumeration

#num LIBUSB_HOTPLUG_MATCH_ANY

#integral_t libusb_hotplug_callback_handle

#callback libusb_hotplug_callback_fn , Ptr <libusb_context> -> \
  Ptr <libusb_device> -> <libusb_hotplug_event> -> Ptr () -> IO CInt

#integral_t libusb_hotplug_flag

#num LIBUSB_HOTPLUG_ENUMERATE

#integral_t libusb_hotplug_event

#num LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED
#num LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT

#ccall libusb_hotplug_register_callback , Ptr <libusb_context> -> \
  <libusb_hotplug_event> -> \
  <libusb_hotplug_flag> -> \
  CInt -> \
  CInt -> \
  CInt -> \
  <libusb_hotplug_callback_fn> -> \
  Ptr () -> \
  Ptr <libusb_hotplug_callback_handle> -> \
  IO CInt

#ccall libusb_hotplug_deregister_callback , Ptr <libusb_context> -> \
 <libusb_hotplug_callback_handle> -> IO ()

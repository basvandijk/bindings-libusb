module LibusbFunctions where
import Bindings.C
import Bindings.Posix
import Foreign
import Foreign.C
import LibusbTypes

foreign import ccall "libusb_set_debug" libusb_set_debug
    :: Ptr Libusb_context -> CInt -> IO () ; 

foreign import ccall "libusb_init" libusb_init
    :: Ptr (Ptr Libusb_context) -> IO CInt

foreign import ccall "libusb_exit" libusb_exit
    :: Ptr Libusb_context -> IO ()

foreign import ccall "libusb_get_device_list" libusb_get_device_list
    :: Ptr Libusb_context -> Ptr (Ptr Libusb_device) -> IO CInt

foreign import ccall "libusb_free_device_list" libusb_free_device_list
   :: Ptr (Ptr Libusb_device) -> CInt -> IO ()

foreign import ccall "libusb_get_bus_number" libusb_get_bus_number
    :: Ptr Libusb_device -> IO Word8

foreign import ccall "libusb_get_device_address"
 libusb_get_device_address
    :: Ptr Libusb_device -> IO Word8

foreign import ccall "libusb_get_max_packet_size"
 libusb_get_max_packet_size
    :: Ptr Libusb_device -> CUChar -> IO CInt

foreign import ccall "libusb_ref_device" libusb_ref_device
    :: Ptr Libusb_device -> IO (Ptr Libusb_device)

foreign import ccall "libusb_unref_device" libusb_unref_device
    :: Ptr Libusb_device -> IO ()

foreign import ccall "libusb_open" libusb_open
    :: Ptr Libusb_device -> Ptr (Ptr Libusb_device_handle) -> IO CInt

foreign import ccall "libusb_open_device_with_vid_pid"
 libusb_open_device_with_vid_pid
    :: Ptr Libusb_context -> Word16 -> Word16 ->
       IO (Ptr Libusb_device_handle)

foreign import ccall "libusb_close" libusb_close
    :: Ptr Libusb_device_handle -> IO ()

foreign import ccall "libusb_get_device" libusb_get_device
    :: Ptr Libusb_device_handle -> IO (Ptr Libusb_device)

foreign import ccall "libusb_get_configuration"
 libusb_get_configuration
    :: Ptr Libusb_device_handle -> Ptr CInt -> IO CInt

foreign import ccall "libusb_set_configuration"
 libusb_set_configuration
    :: Ptr Libusb_device_handle -> CInt -> IO CInt

foreign import ccall "libusb_claim_interface" libusb_claim_interface
    :: Ptr Libusb_device_handle -> CInt -> IO CInt

foreign import ccall "libusb_release_interface"
 libusb_release_interface
    :: Ptr Libusb_device_handle -> CInt -> IO CInt

foreign import ccall "libusb_set_interface_alt_setting"
 libusb_set_interface_alt_setting
    :: Ptr Libusb_device_handle -> CInt -> CInt -> IO CInt

foreign import ccall "libusb_clear_halt" libusb_clear_halt
    :: Ptr Libusb_device_handle -> CUChar -> IO CInt

foreign import ccall "libusb_reset_device" libusb_reset_device
    :: Ptr Libusb_device_handle -> IO CInt

foreign import ccall "libusb_kernel_driver_active"
 libusb_kernel_driver_active
    :: Ptr Libusb_device_handle -> CInt   -> IO CInt

foreign import ccall "libusb_detach_kernel_driver"
 libusb_detach_kernel_driver
    :: Ptr Libusb_device_handle -> CInt -> IO CInt

foreign import ccall "libusb_attach_kernel_driver"
 libusb_attach_kernel_driver
    :: Ptr Libusb_device_handle -> CInt -> IO CInt

foreign import ccall "_libusb_cpu_to_le16" libusb_cpu_to_le16
    :: Word16 -> Word16

foreign import ccall "_libusb_le16_to_cpu" libusb_le16_to_cpu
    :: Word16 -> Word16

foreign import ccall "libusb_get_device_descriptor"
 libusb_get_device_descriptor
    :: Ptr Libusb_device -> Ptr Libusb_device_descriptor -> IO CInt

foreign import ccall "libusb_get_active_config_descriptor"
 libusb_get_active_config_descriptor
    :: Ptr Libusb_device -> Ptr
       (Ptr Libusb_config_descriptor) -> IO CInt

foreign import ccall "libusb_get_config_descriptor"
 libusb_get_config_descriptor
    :: Ptr Libusb_device -> Word8 -> Ptr
       (Ptr Libusb_config_descriptor) -> IO CInt

foreign import ccall "libusb_get_config_descriptor_by_value"
 libusb_get_config_descriptor_by_value
    :: Ptr Libusb_device -> Word8 -> Ptr (Ptr Libusb_config_descriptor) ->
       IO CInt

foreign import ccall "libusb_free_config_descriptor"
 libusb_free_config_descriptor
    :: Ptr Libusb_config_descriptor -> IO ()

foreign import ccall "libusb_get_string_descriptor_ascii"
 libusb_get_string_descriptor_ascii
    :: Ptr Libusb_device_handle -> Word8 -> Ptr CUChar -> CInt -> IO CInt

foreign import ccall "libusb_get_descriptor" libusb_get_descriptor
    :: Ptr Libusb_device_handle -> Word8 -> Word8 -> Ptr CUChar ->
       CInt -> IO CInt

foreign import ccall "libusb_get_string_descriptor"
 libusb_get_string_descriptor
    :: Ptr Libusb_device_handle -> Word8 ->
       Word16 -> Ptr CUChar -> CInt -> IO CInt

foreign import ccall "libusb_alloc_transfer" libusb_alloc_transfer
    :: CInt -> IO (Ptr (Libusb_transfer a))

foreign import ccall "libusb_free_transfer" libusb_free_transfer
    :: Ptr (Libusb_transfer a)

foreign import ccall "libusb_submit_transfer" libusb_submit_transfer
    :: Ptr (Libusb_transfer a) -> IO CInt

foreign import ccall "libusb_cancel_transfer" libusb_cancel_transfer
    :: Ptr (Libusb_transfer a) -> IO CInt

foreign import ccall "libusb_control_transfer_get_data"
 libusb_control_transfer_get_data
    :: Ptr (Libusb_transfer a) -> IO (Ptr CUChar)

foreign import ccall "libusb_control_transfer_get_setup"
 libusb_control_transfer_get_setup
    :: Ptr (Libusb_transfer a) -> IO (Ptr Libusb_control_setup)

foreign import ccall "libusb_fill_control_setup"
 libusb_fill_control_setup
    :: Ptr CUChar -> Word8 -> Word8 ->
       Word16 -> Word16 -> Word16 -> IO ()

foreign import ccall "libusb_fill_control_transfer"
 libusb_fill_control_transfer
    :: Ptr (Libusb_transfer a) -> Ptr Libusb_device_handle ->
       Ptr CUChar -> FunPtr (Libusb_transfer_cb_fn a) ->
       Ptr a -> CUInt -> IO ()

foreign import ccall "libusb_fill_bulk_transfer"
 libusb_fill_bulk_transfer
    :: Ptr (Libusb_transfer a) -> Ptr Libusb_device_handle -> CUChar ->
       Ptr CUChar -> CInt -> FunPtr (Libusb_transfer_cb_fn a) ->
       Ptr a -> CUInt -> IO ()

foreign import ccall "libusb_fill_interrupt_transfer"
 libusb_fill_interrupt_transfer
    :: Ptr (Libusb_transfer a) -> Ptr Libusb_device_handle -> CUChar -> 
       Ptr CUChar -> CInt -> FunPtr (Libusb_transfer_cb_fn a) -> 
       Ptr a -> CUInt -> IO ()

foreign import ccall "libusb_fill_iso_transfer"
 libusb_fill_iso_transfer
    :: Ptr (Libusb_transfer a) -> Ptr Libusb_device_handle -> CUChar ->
       Ptr CUChar -> CInt -> CInt -> FunPtr (Libusb_transfer_cb_fn a) ->
       Ptr a -> CUInt -> IO ()

foreign import ccall "libusb_set_iso_packet_lengths"
 libusb_set_iso_packet_lengths
    :: Ptr (Libusb_transfer a) -> CUInt -> IO ()

foreign import ccall "libusb_get_iso_packet_buffer"
 libusb_get_iso_packet_buffer
    :: Ptr (Libusb_transfer a) -> CUInt -> IO (Ptr CUChar)

foreign import ccall "libusb_get_iso_packet_buffer_simple"
 libusb_get_iso_packet_buffer_simple
    :: Ptr (Libusb_transfer a) -> CUInt -> IO (Ptr CUChar)

foreign import ccall "libusb_try_lock_events" libusb_try_lock_events
    :: Ptr Libusb_context -> IO CInt

foreign import ccall "libusb_lock_events" libusb_lock_events
    :: Ptr Libusb_context -> IO ()

foreign import ccall "libusb_unlock_events" libusb_unlock_events
    :: Ptr Libusb_context -> IO ()

foreign import ccall "libusb_event_handling_ok"
 libusb_event_handling_ok
    :: Ptr Libusb_context -> IO CInt

foreign import ccall "libusb_event_handler_active"
 libusb_event_handler_active
    :: Ptr Libusb_context -> IO CInt

foreign import ccall "libusb_lock_event_waiters"
 libusb_lock_event_waiters
    :: Ptr Libusb_context -> IO ()

foreign import ccall "libusb_unlock_event_waiters"
 libusb_unlock_event_waiters
    :: Ptr Libusb_context -> IO ()

foreign import ccall "libusb_wait_for_event" libusb_wait_for_event
    :: Ptr Libusb_context -> Ptr Timeval -> IO CInt

foreign import ccall "libusb_handle_events_timeout"
 libusb_handle_events_timeout
    :: Ptr Libusb_context -> Ptr Timeval -> IO CInt

foreign import ccall "libusb_handle_events" libusb_handle_events
    :: Ptr Libusb_context -> IO CInt

foreign import ccall "libusb_handle_events_locked"
 libusb_handle_events_locked
    :: Ptr Libusb_context -> Ptr Timeval -> IO CInt

foreign import ccall "libusb_get_next_timeout" libusb_get_next_timeout
   :: Ptr Libusb_context -> Ptr Timeval -> IO CInt

foreign import ccall "libusb_set_pollfd_notifiers"
 libusb_set_pollfd_notifiers
    :: Ptr Libusb_context -> Libusb_pollfd_added_cb a ->
       Libusb_pollfd_removed_cb a -> Ptr a -> IO ()

foreign import ccall "libusb_get_pollfds" libusb_get_pollfds
    :: Ptr Libusb_context -> IO (Ptr (Ptr Libusb_pollfd)) ;

foreign import ccall "libusb_interrupt_transfer"
 libusb_interrupt_transfer
    :: Ptr Libusb_device_handle -> CUChar -> Ptr CUChar ->
       CInt -> Ptr CInt -> CUInt -> IO CInt

foreign import ccall "libusb_bulk_transfer" libusb_bulk_transfer
    :: Ptr Libusb_device_handle -> CUChar -> Ptr CUChar -> CInt ->
       Ptr CInt -> CUInt -> IO CInt

foreign import ccall "libusb_control_transfer" libusb_control_transfer
   :: Ptr Libusb_device_handle -> Word8 -> Word8 -> Word16 -> Word16 ->
      Ptr CUChar -> Word16 -> CUInt -> IO CInt


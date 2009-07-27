module Bindings.Libusb (

    -- * Library initialization/deinitialization

    -- | <http://libusb.sourceforge.net/api-1.0/group__lib.html>

    Libusb_context,
    libusb_set_debug,
    libusb_init,
    libusb_exit,

    -- * Device handling and enumeration

    -- | <http://libusb.sourceforge.net/api-1.0/group__dev.html>

    Libusb_device,
    Libusb_device_handle,
    libusb_get_device_list,
    libusb_free_device_list,
    libusb_get_bus_number,
    libusb_get_device_address,
    libusb_get_max_packet_size,
    libusb_ref_device,
    libusb_unref_device,
    libusb_open,
    libusb_open_device_with_vid_pid,
    libusb_close,
    libusb_get_device,
    libusb_get_configuration,
    libusb_set_configuration,
    libusb_claim_interface,
    libusb_release_interface,
    libusb_clear_halt,
    libusb_reset_device,
    libusb_kernel_driver_active,
    libusb_attach_kernel_driver,

    -- * Miscellaneous

    -- | <http://libusb.sourceforge.net/api-1.0/group__misc.html>

    libusb_cpu_to_le16,
    libusb_le16_to_cpu,
    Libusb_standard_request,
    _LIBUSB_REQUEST_GET_STATUS,
    _LIBUSB_REQUEST_CLEAR_FEATURE,
    _LIBUSB_REQUEST_SET_FEATURE,
    _LIBUSB_REQUEST_SET_ADDRESS,
    _LIBUSB_REQUEST_GET_DESCRIPTOR,
    _LIBUSB_REQUEST_SET_DESCRIPTOR,
    _LIBUSB_REQUEST_GET_CONFIGURATION,
    _LIBUSB_REQUEST_SET_CONFIGURATION,
    _LIBUSB_REQUEST_GET_INTERFACE,
    _LIBUSB_REQUEST_SET_INTERFACE,
    _LIBUSB_REQUEST_SYNCH_FRAME,
    Libusb_request_type,
    _LIBUSB_REQUEST_TYPE_STANDARD,
    _LIBUSB_REQUEST_TYPE_CLASS,
    _LIBUSB_REQUEST_TYPE_VENDOR,
    _LIBUSB_REQUEST_TYPE_RESERVED,
    Libusb_request_recipient,
    _LIBUSB_RECIPIENT_DEVICE,
    _LIBUSB_RECIPIENT_INTERFACE,
    _LIBUSB_RECIPIENT_ENDPOINT,
    _LIBUSB_RECIPIENT_OTHER,
    Libusb_error,
    _LIBUSB_SUCCESS,
    _LIBUSB_ERROR_IO,
    _LIBUSB_ERROR_INVALID_PARAM,
    _LIBUSB_ERROR_ACCESS,
    _LIBUSB_ERROR_NO_DEVICE,
    _LIBUSB_ERROR_NOT_FOUND,
    _LIBUSB_ERROR_BUSY,
    _LIBUSB_ERROR_TIMEOUT,
    _LIBUSB_ERROR_OVERFLOW,
    _LIBUSB_ERROR_PIPE,
    _LIBUSB_ERROR_INTERRUPTED,
    _LIBUSB_ERROR_NO_MEM,
    _LIBUSB_ERROR_NOT_SUPPORTED,
    _LIBUSB_ERROR_OTHER,

    -- * USB descriptors

    -- | <http://libusb.sourceforge.net/api-1.0/group__desc.html>

    Libusb_device_descriptor,
    Libusb_endpoint_descriptor,
    Libusb_interface_descriptor,
    Libusb_interface,
    Libusb_config_descriptor,
    Libusb_class_code,
    _LIBUSB_CLASS_PER_INTERFACE,
    _LIBUSB_CLASS_AUDIO,
    _LIBUSB_CLASS_COMM,
    _LIBUSB_CLASS_HID,
    _LIBUSB_CLASS_PRINTER,
    _LIBUSB_CLASS_PTP,
    _LIBUSB_CLASS_MASS_STORAGE,
    _LIBUSB_CLASS_HUB,
    _LIBUSB_CLASS_DATA,
    _LIBUSB_CLASS_VENDOR_SPEC,
    Libusb_descriptor_type,
    _LIBUSB_DT_DEVICE,
    _LIBUSB_DT_CONFIG,
    _LIBUSB_DT_STRING,
    _LIBUSB_DT_INTERFACE,
    _LIBUSB_DT_ENDPOINT,
    _LIBUSB_DT_HID,
    _LIBUSB_DT_REPORT,
    _LIBUSB_DT_PHYSICAL,
    _LIBUSB_DT_HUB,
    Libusb_endpoint_direction,
    _LIBUSB_ENDPOINT_IN,
    _LIBUSB_ENDPOINT_OUT,
    Libusb_transfer_type,
    _LIBUSB_TRANSFER_TYPE_CONTROL,
    _LIBUSB_TRANSFER_TYPE_ISOCHRONOUS,
    _LIBUSB_TRANSFER_TYPE_BULK,
    _LIBUSB_TRANSFER_TYPE_INTERRUPT,
    Libusb_iso_sync_type,
    _LIBUSB_ISO_SYNC_TYPE_NONE,
    _LIBUSB_ISO_SYNC_TYPE_ASYNC,
    _LIBUSB_ISO_SYNC_TYPE_ADAPTIVE,
    _LIBUSB_ISO_SYNC_TYPE_SYNC,
    Libusb_iso_usage_type,
    _LIBUSB_ISO_USAGE_TYPE_DATA,
    _LIBUSB_ISO_USAGE_TYPE_FEEDBACK,
    _LIBUSB_ISO_USAGE_TYPE_IMPLICIT,
    libusb_get_device_descriptor,
    libusb_get_active_config_descriptor,
    libusb_get_config_descriptor,
    libusb_get_config_descriptor_by_value,
    libusb_free_config_descriptor,
    libusb_get_string_descriptor_ascii,
    libusb_get_descriptor,
    libusb_get_string_descriptor,

    -- * Asynchronous device I/O

    -- | <http://libusb.sourceforge.net/api-1.0/group__asyncio.html>

    Libusb_control_setup,
    Libusb_iso_packet_descriptor,
    Libusb_transfer,
    Libusb_transfer_cb_fn,
    Libusb_transfer_status,
    _LIBUSB_TRANSFER_COMPLETED,
    _LIBUSB_TRANSFER_ERROR,
    _LIBUSB_TRANSFER_TIMED_OUT,
    _LIBUSB_TRANSFER_CANCELLED,
    _LIBUSB_TRANSFER_STALL,
    _LIBUSB_TRANSFER_NO_DEVICE,
    _LIBUSB_TRANSFER_OVERFLOW,
    Libusb_transfer_flags,
    _LIBUSB_TRANSFER_SHORT_NOT_OK,
    _LIBUSB_TRANSFER_FREE_BUFFER,
    _LIBUSB_TRANSFER_FREE_TRANSFER,
    libusb_alloc_transfer,
    libusb_free_transfer,
    libusb_submit_transfer,
    libusb_cancel_transfer,
    libusb_control_transfer_get_data,
    libusb_control_transfer_get_setup,
    libusb_fill_control_setup,
    libusb_fill_control_transfer,
    libusb_fill_bulk_transfer,
    libusb_fill_interrupt_transfer,
    libusb_fill_iso_transfer,
    libusb_set_iso_packet_lengths,
    libusb_get_iso_packet_buffer,
    libusb_get_iso_packet_buffer_simple,

    -- * Polling and timing

    -- | <http://libusb.sourceforge.net/api-1.0/group__poll.html>

    Libusb_pollfd,
    Libusb_pollfd_added_cb,
    Libusb_pollfd_removed_cb,
    libusb_try_lock_events,
    libusb_lock_events,
    libusb_unlock_events,
    libusb_event_handling_ok,
    libusb_event_handler_active,
    libusb_lock_event_waiters,
    libusb_unlock_event_waiters,
    libusb_wait_for_event,
    libusb_handle_events_timeout,
    libusb_handle_events,
    libusb_handle_events_locked,
    libusb_get_next_timeout,
    libusb_set_pollfd_notifiers,
    libusb_get_pollfds,

    -- * Synchronous device I/O

    -- | <http://libusb.sourceforge.net/api-1.0/group__syncio.html>

    libusb_interrupt_transfer,
    libusb_bulk_transfer,
    libusb_control_transfer

 ) where

import LibusbTypes
import LibusbFunctions
import LibusbConstants

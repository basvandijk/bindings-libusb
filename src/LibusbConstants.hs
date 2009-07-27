module LibusbConstants where
import Foreign
import LibusbTypes

foreign import ccall "_LIBUSB_REQUEST_GET_STATUS"
 _LIBUSB_REQUEST_GET_STATUS :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_CLEAR_FEATURE"
 _LIBUSB_REQUEST_CLEAR_FEATURE :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_SET_FEATURE"
 _LIBUSB_REQUEST_SET_FEATURE :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_SET_ADDRESS"
 _LIBUSB_REQUEST_SET_ADDRESS :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_GET_DESCRIPTOR"
 _LIBUSB_REQUEST_GET_DESCRIPTOR :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_SET_DESCRIPTOR"
 _LIBUSB_REQUEST_SET_DESCRIPTOR :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_GET_CONFIGURATION"
 _LIBUSB_REQUEST_GET_CONFIGURATION :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_SET_CONFIGURATION"
 _LIBUSB_REQUEST_SET_CONFIGURATION :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_GET_INTERFACE"
 _LIBUSB_REQUEST_GET_INTERFACE :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_SET_INTERFACE"
 _LIBUSB_REQUEST_SET_INTERFACE :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_SYNCH_FRAME"
 _LIBUSB_REQUEST_SYNCH_FRAME :: Libusb_standard_request

foreign import ccall "_LIBUSB_REQUEST_TYPE_STANDARD"
 _LIBUSB_REQUEST_TYPE_STANDARD :: Libusb_request_type

foreign import ccall "_LIBUSB_REQUEST_TYPE_CLASS"
 _LIBUSB_REQUEST_TYPE_CLASS :: Libusb_request_type

foreign import ccall "_LIBUSB_REQUEST_TYPE_VENDOR"
 _LIBUSB_REQUEST_TYPE_VENDOR :: Libusb_request_type

foreign import ccall "_LIBUSB_REQUEST_TYPE_RESERVED"
 _LIBUSB_REQUEST_TYPE_RESERVED :: Libusb_request_type

foreign import ccall "_LIBUSB_RECIPIENT_DEVICE"
 _LIBUSB_RECIPIENT_DEVICE :: Libusb_request_recipient

foreign import ccall "_LIBUSB_RECIPIENT_INTERFACE"
 _LIBUSB_RECIPIENT_INTERFACE :: Libusb_request_recipient

foreign import ccall "_LIBUSB_RECIPIENT_ENDPOINT"
 _LIBUSB_RECIPIENT_ENDPOINT :: Libusb_request_recipient

foreign import ccall "_LIBUSB_RECIPIENT_OTHER"
 _LIBUSB_RECIPIENT_OTHER :: Libusb_request_recipient

foreign import ccall "_LIBUSB_SUCCESS"
 _LIBUSB_SUCCESS :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_IO"
 _LIBUSB_ERROR_IO :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_INVALID_PARAM"
 _LIBUSB_ERROR_INVALID_PARAM :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_ACCESS"
 _LIBUSB_ERROR_ACCESS :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_NO_DEVICE"
 _LIBUSB_ERROR_NO_DEVICE :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_NOT_FOUND"
 _LIBUSB_ERROR_NOT_FOUND :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_BUSY"
 _LIBUSB_ERROR_BUSY :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_TIMEOUT"
 _LIBUSB_ERROR_TIMEOUT :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_OVERFLOW"
 _LIBUSB_ERROR_OVERFLOW :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_PIPE"
 _LIBUSB_ERROR_PIPE :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_INTERRUPTED"
 _LIBUSB_ERROR_INTERRUPTED :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_NO_MEM"
 _LIBUSB_ERROR_NO_MEM :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_NOT_SUPPORTED"
 _LIBUSB_ERROR_NOT_SUPPORTED :: Libusb_error

foreign import ccall "_LIBUSB_ERROR_OTHER"
 _LIBUSB_ERROR_OTHER :: Libusb_error

foreign import ccall "_LIBUSB_CLASS_PER_INTERFACE"
 _LIBUSB_CLASS_PER_INTERFACE :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_AUDIO"
 _LIBUSB_CLASS_AUDIO :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_COMM"
 _LIBUSB_CLASS_COMM :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_HID"
 _LIBUSB_CLASS_HID :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_PRINTER"
 _LIBUSB_CLASS_PRINTER :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_PTP"
 _LIBUSB_CLASS_PTP :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_MASS_STORAGE"
 _LIBUSB_CLASS_MASS_STORAGE :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_HUB"
 _LIBUSB_CLASS_HUB :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_DATA"
 _LIBUSB_CLASS_DATA :: Libusb_class_code

foreign import ccall "_LIBUSB_CLASS_VENDOR_SPEC"
 _LIBUSB_CLASS_VENDOR_SPEC :: Libusb_class_code

foreign import ccall "_LIBUSB_DT_DEVICE"
 _LIBUSB_DT_DEVICE :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_DT_CONFIG"
 _LIBUSB_DT_CONFIG :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_DT_STRING"
 _LIBUSB_DT_STRING :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_DT_INTERFACE"
 _LIBUSB_DT_INTERFACE :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_DT_ENDPOINT"
 _LIBUSB_DT_ENDPOINT :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_DT_HID"
 _LIBUSB_DT_HID :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_DT_REPORT"
 _LIBUSB_DT_REPORT :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_DT_PHYSICAL"
 _LIBUSB_DT_PHYSICAL :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_DT_HUB"
 _LIBUSB_DT_HUB :: Libusb_descriptor_type

foreign import ccall "_LIBUSB_ENDPOINT_IN"
 _LIBUSB_ENDPOINT_IN :: Libusb_endpoint_direction

foreign import ccall "_LIBUSB_ENDPOINT_OUT"
 _LIBUSB_ENDPOINT_OUT :: Libusb_endpoint_direction

foreign import ccall "_LIBUSB_TRANSFER_TYPE_CONTROL"
 _LIBUSB_TRANSFER_TYPE_CONTROL :: Libusb_transfer_type

foreign import ccall "_LIBUSB_TRANSFER_TYPE_ISOCHRONOUS"
 _LIBUSB_TRANSFER_TYPE_ISOCHRONOUS :: Libusb_transfer_type

foreign import ccall "_LIBUSB_TRANSFER_TYPE_BULK"
 _LIBUSB_TRANSFER_TYPE_BULK :: Libusb_transfer_type

foreign import ccall "_LIBUSB_TRANSFER_TYPE_INTERRUPT"
 _LIBUSB_TRANSFER_TYPE_INTERRUPT :: Libusb_transfer_type

foreign import ccall "_LIBUSB_ISO_SYNC_TYPE_NONE"
 _LIBUSB_ISO_SYNC_TYPE_NONE :: Libusb_iso_sync_type

foreign import ccall "_LIBUSB_ISO_SYNC_TYPE_ASYNC"
 _LIBUSB_ISO_SYNC_TYPE_ASYNC :: Libusb_iso_sync_type

foreign import ccall "_LIBUSB_ISO_SYNC_TYPE_ADAPTIVE"
 _LIBUSB_ISO_SYNC_TYPE_ADAPTIVE :: Libusb_iso_sync_type

foreign import ccall "_LIBUSB_ISO_SYNC_TYPE_SYNC"
 _LIBUSB_ISO_SYNC_TYPE_SYNC :: Libusb_iso_sync_type

foreign import ccall "_LIBUSB_ISO_USAGE_TYPE_DATA"
 _LIBUSB_ISO_USAGE_TYPE_DATA :: Libusb_iso_usage_type

foreign import ccall "_LIBUSB_ISO_USAGE_TYPE_FEEDBACK"
 _LIBUSB_ISO_USAGE_TYPE_FEEDBACK :: Libusb_iso_usage_type

foreign import ccall "_LIBUSB_ISO_USAGE_TYPE_IMPLICIT"
 _LIBUSB_ISO_USAGE_TYPE_IMPLICIT :: Libusb_iso_usage_type

foreign import ccall "_LIBUSB_TRANSFER_COMPLETED"
 _LIBUSB_TRANSFER_COMPLETED :: Libusb_transfer_status

foreign import ccall "_LIBUSB_TRANSFER_ERROR"
 _LIBUSB_TRANSFER_ERROR :: Libusb_transfer_status

foreign import ccall "_LIBUSB_TRANSFER_TIMED_OUT"
 _LIBUSB_TRANSFER_TIMED_OUT :: Libusb_transfer_status

foreign import ccall "_LIBUSB_TRANSFER_CANCELLED"
 _LIBUSB_TRANSFER_CANCELLED :: Libusb_transfer_status

foreign import ccall "_LIBUSB_TRANSFER_STALL"
 _LIBUSB_TRANSFER_STALL :: Libusb_transfer_status

foreign import ccall "_LIBUSB_TRANSFER_NO_DEVICE"
 _LIBUSB_TRANSFER_NO_DEVICE :: Libusb_transfer_status

foreign import ccall "_LIBUSB_TRANSFER_OVERFLOW"
 _LIBUSB_TRANSFER_OVERFLOW :: Libusb_transfer_status

foreign import ccall "_LIBUSB_TRANSFER_SHORT_NOT_OK"
 _LIBUSB_TRANSFER_SHORT_NOT_OK :: Libusb_transfer_flags

foreign import ccall "_LIBUSB_TRANSFER_FREE_BUFFER"
 _LIBUSB_TRANSFER_FREE_BUFFER :: Libusb_transfer_flags

foreign import ccall "_LIBUSB_TRANSFER_FREE_TRANSFER"
 _LIBUSB_TRANSFER_FREE_TRANSFER :: Libusb_transfer_flags


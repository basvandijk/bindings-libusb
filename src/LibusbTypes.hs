module LibusbTypes where
import Bindings.Utilities
import Foreign
import Foreign.C

data Libusb_context

data Libusb_device

data Libusb_device_handle

type Libusb_standard_request = Word8

type Libusb_request_type = Word8

type Libusb_request_recipient = Word8

type Libusb_error = CInt

type Libusb_descriptor_type = Word8

data Libusb_device_descriptor = Libusb_device_descriptor {
    libusb_device_descriptor'bLength,
    libusb_device_descriptor'bDescriptorType :: Word8,
    libusb_device_descriptor'bcdUSB :: Word16,
    libusb_device_descriptor'bDeviceClass,
    libusb_device_descriptor'bDeviceSubClass,
    libusb_device_descriptor'bDeviceProtocol,
    libusb_device_descriptor'bMaxPacketSize0 :: Word8,
    libusb_device_descriptor'idVendor,
    libusb_device_descriptor'idProduct,
    libusb_device_descriptor'bcdDevice :: Word16,
    libusb_device_descriptor'iManufacturer,
    libusb_device_descriptor'iProduct,
    libusb_device_descriptor'iSerialNumber,
    libusb_device_descriptor'bNumConfigurations :: Word8 }

instance Storable Libusb_device_descriptor where
    sizeOf _ = fromIntegral size_of_libusb_device_descriptor

    alignment = sizeOf

    peek p =
        with 0 $ \p1 ->
        with 0 $ \p2 ->
        with 0 $ \p3 ->
        with 0 $ \p4 ->
        with 0 $ \p5 ->
        with 0 $ \p6 ->
        with 0 $ \p7 ->
        with 0 $ \p8 ->
        with 0 $ \p9 ->
        with 0 $ \p10 ->
        with 0 $ \p11 ->
        with 0 $ \p12 ->
        with 0 $ \p13 ->
        with 0 $ \p14 ->

        c2hs_libusb_device_descriptor p p1 p2 p3 p4 p5 p6 p7 p8
            p9 p10 p11 p12 p13 p14 >>

        peek p1 >>= \v1 ->
        peek p2 >>= \v2 ->
        peek p3 >>= \v3 ->
        peek p4 >>= \v4 ->
        peek p5 >>= \v5 ->
        peek p6 >>= \v6 ->
        peek p7 >>= \v7 ->
        peek p8 >>= \v8 ->
        peek p9 >>= \v9 ->
        peek p10 >>= \v10 ->
        peek p11 >>= \v11 ->
        peek p12 >>= \v12 ->
        peek p13 >>= \v13 ->
        peek p14 >>= \v14 ->

        return $ Libusb_device_descriptor v1 v2 v3 v4 v5 v6 v7 v8
               v9 v10 v11 v12 v13 v14

    poke p v = hs2c_libusb_device_descriptor p
        (libusb_device_descriptor'bLength v)
        (libusb_device_descriptor'bDescriptorType v)
        (libusb_device_descriptor'bcdUSB v)
        (libusb_device_descriptor'bDeviceClass v)
        (libusb_device_descriptor'bDeviceSubClass v)
        (libusb_device_descriptor'bDeviceProtocol v)
        (libusb_device_descriptor'bMaxPacketSize0 v)
        (libusb_device_descriptor'idVendor v)
        (libusb_device_descriptor'idProduct v)
        (libusb_device_descriptor'bcdDevice v)
        (libusb_device_descriptor'iManufacturer v)
        (libusb_device_descriptor'iProduct v)
        (libusb_device_descriptor'iSerialNumber v)
        (libusb_device_descriptor'bNumConfigurations v)

data Libusb_endpoint_descriptor = Libusb_endpoint_descriptor {
    libusb_endpoint_descriptor'bLength  ,
    libusb_endpoint_descriptor'bDescriptorType  ,
    libusb_endpoint_descriptor'bEndpointAddress  ,
    libusb_endpoint_descriptor'bmAttributes :: Word8 ,
    libusb_endpoint_descriptor'wMaxPacketSize :: Word16 ,
    libusb_endpoint_descriptor'bInterval  ,
    libusb_endpoint_descriptor'bRefresh  ,
    libusb_endpoint_descriptor'bSynchAddress :: Word8 ,
    libusb_endpoint_descriptor'extra :: Ptr CUChar ,
    libusb_endpoint_descriptor'extra_length :: CInt }

instance Storable Libusb_endpoint_descriptor where
    sizeOf _ = fromIntegral size_of_libusb_endpoint_descriptor

    alignment = sizeOf

    peek p =
        with 0 $ \p1 ->
        with 0 $ \p2 ->
        with 0 $ \p3 ->
        with 0 $ \p4 ->
        with 0 $ \p5 ->
        with 0 $ \p6 ->
        with 0 $ \p7 ->
        with 0 $ \p8 ->
        with nullPtr $ \p9 ->
        with 0 $ \p10 ->

        c2hs_libusb_endpoint_descriptor p p1 p2 p3 p4 p5 p6
            p7 p8 p9 p10 >>

        peek p1 >>= \v1 ->
        peek p2 >>= \v2 ->
        peek p3 >>= \v3 ->
        peek p4 >>= \v4 ->
        peek p5 >>= \v5 ->
        peek p6 >>= \v6 ->
        peek p7 >>= \v7 ->
        peek p8 >>= \v8 ->
        peek p9 >>= \v9 ->
        peek p10 >>= \v10 ->

        return $ Libusb_endpoint_descriptor
            v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

    poke p v = hs2c_libusb_endpoint_descriptor p
        (libusb_endpoint_descriptor'bLength v)
        (libusb_endpoint_descriptor'bDescriptorType v)
        (libusb_endpoint_descriptor'bEndpointAddress v)
        (libusb_endpoint_descriptor'bmAttributes v)
        (libusb_endpoint_descriptor'wMaxPacketSize v)
        (libusb_endpoint_descriptor'bInterval v)
        (libusb_endpoint_descriptor'bRefresh v)
        (libusb_endpoint_descriptor'bSynchAddress v)
        (libusb_endpoint_descriptor'extra v)
        (libusb_endpoint_descriptor'extra_length v)

data Libusb_interface_descriptor = Libusb_interface_descriptor {
    libusb_interface_descriptor'bLength,
    libusb_interface_descriptor'bDescriptorType,
    libusb_interface_descriptor'bInterfaceNumber,
    libusb_interface_descriptor'bAlternateSetting,
    libusb_interface_descriptor'bNumEndpoints,
    libusb_interface_descriptor'bInterfaceClass,
    libusb_interface_descriptor'bInterfaceSubClass,
    libusb_interface_descriptor'bInterfaceProtocol,
    libusb_interface_descriptor'iInterface
        :: Word8,
    libusb_interface_descriptor'endpoint
        :: Ptr Libusb_endpoint_descriptor,
    libusb_interface_descriptor'extra
        :: Ptr CUChar,
    libusb_interface_descriptor'extra_length
        :: CInt }

instance Storable Libusb_interface_descriptor where
    sizeOf _ = fromIntegral size_of_libusb_interface_descriptor

    alignment = sizeOf

    peek p =
        with 0 $ \p1 ->
        with 0 $ \p2 ->
        with 0 $ \p3 ->
        with 0 $ \p4 ->
        with 0 $ \p5 ->
        with 0 $ \p6 ->
        with 0 $ \p7 ->
        with 0 $ \p8 ->
        with 0 $ \p9 ->
        with nullPtr $ \p10 ->
        with nullPtr $ \p11 ->
        with 0 $ \p12 ->

        c2hs_libusb_interface_descriptor p p1 p2 p3 p4 p5
            p6 p7 p8 p9 p10 p11 p12 >>

        peek p1 >>= \v1 ->
        peek p2 >>= \v2 ->
        peek p3 >>= \v3 ->
        peek p4 >>= \v4 ->
        peek p5 >>= \v5 ->
        peek p6 >>= \v6 ->
        peek p7 >>= \v7 ->
        peek p8 >>= \v8 ->
        peek p9 >>= \v9 ->
        peek p10 >>= \v10 ->
        peek p11 >>= \v11 ->
        peek p12 >>= \v12 ->

        return $ Libusb_interface_descriptor
            v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12

    poke p v = hs2c_libusb_interface_descriptor p 
        (libusb_interface_descriptor'bLength v)
        (libusb_interface_descriptor'bDescriptorType v)
        (libusb_interface_descriptor'bInterfaceNumber v)
        (libusb_interface_descriptor'bAlternateSetting v)
        (libusb_interface_descriptor'bNumEndpoints v)
        (libusb_interface_descriptor'bInterfaceClass v)
        (libusb_interface_descriptor'bInterfaceSubClass v)
        (libusb_interface_descriptor'bInterfaceProtocol v)
        (libusb_interface_descriptor'iInterface v)
        (libusb_interface_descriptor'endpoint v)
        (libusb_interface_descriptor'extra v)
        (libusb_interface_descriptor'extra_length v)
    
data Libusb_interface = Libusb_interface {
    libusb_interface'altsetting :: Ptr Libusb_interface_descriptor,
    libusb_interface'num_altsetting :: CInt }

instance Storable Libusb_interface where
    sizeOf _ = fromIntegral size_of_libusb_interface

    alignment = sizeOf

    peek p =
        with nullPtr $ \p1 -> 
        with 0 $ \p2 ->

        c2hs_libusb_interface p p1 p2 >>

        peek p1 >>= \v1 ->
        peek p2 >>= \v2 ->

        return $ Libusb_interface v1 v2

    poke p v = hs2c_libusb_interface p
        (libusb_interface'altsetting v)
        (libusb_interface'num_altsetting v)

data Libusb_config_descriptor = Libusb_config_descriptor {
    libusb_config_descriptor'bLength  ,
    libusb_config_descriptor'bDescriptorType :: Word8 ,
    libusb_config_descriptor'wTotalLength :: Word16 ,
    libusb_config_descriptor'bNumInterfaces  ,
    libusb_config_descriptor'bConfigurationValue  ,
    libusb_config_descriptor'iConfiguration  ,
    libusb_config_descriptor'bmAttributes  ,
    libusb_config_descriptor'maxPower :: Word8 ,
    libusb_config_descriptor'interface :: Ptr Libusb_interface ,
    libusb_config_descriptor'extra :: Ptr CUChar ,
    libusb_config_descriptor'extra_length :: CInt }

instance Storable Libusb_config_descriptor where
    sizeOf _ = fromIntegral size_of_libusb_config_descriptor

    alignment = sizeOf

    peek p =
        with 0 $ \p1 ->
        with 0 $ \p2 ->
        with 0 $ \p3 ->
        with 0 $ \p4 ->
        with 0 $ \p5 ->
        with 0 $ \p6 ->
        with 0 $ \p7 ->
        with 0 $ \p8 ->
        with nullPtr $ \p9 ->
        with nullPtr $ \p10 ->
        with 0 $ \p11 ->

        c2hs_libusb_config_descriptor p p1 p2 p3 p4 p5 p6 p7
            p8 p9 p10 p11 >>

        peek p1 >>= \v1 ->
        peek p2 >>= \v2 ->
        peek p3 >>= \v3 ->
        peek p4 >>= \v4 ->
        peek p5 >>= \v5 ->
        peek p6 >>= \v6 ->
        peek p7 >>= \v7 ->
        peek p8 >>= \v8 ->
        peek p9 >>= \v9 ->
        peek p10 >>= \v10 ->
        peek p11 >>= \v11 ->

        return $ Libusb_config_descriptor
            v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

    poke p v = hs2c_libusb_config_descriptor p
        (libusb_config_descriptor'bLength v)
        (libusb_config_descriptor'bDescriptorType v)
        (libusb_config_descriptor'wTotalLength v)
        (libusb_config_descriptor'bNumInterfaces v)
        (libusb_config_descriptor'bConfigurationValue v)
        (libusb_config_descriptor'iConfiguration v)
        (libusb_config_descriptor'bmAttributes v)
        (libusb_config_descriptor'maxPower v)
        (libusb_config_descriptor'interface v)
        (libusb_config_descriptor'extra v)
        (libusb_config_descriptor'extra_length v)

type Libusb_class_code = Word8

type Libusb_endpoint_direction = Word8

type Libusb_transfer_type = Word8

type Libusb_iso_sync_type = Word8

type Libusb_iso_usage_type = Word8

data Libusb_control_setup = Libusb_control_setup {
    libusb_control_setup'bmRequestType  ,
    libusb_control_setup'bRequest :: Word8 ,
    libusb_control_setup'wValue  ,
    libusb_control_setup'wIndex  ,
    libusb_control_setup'wLength :: Word16 }

instance Storable Libusb_control_setup where
    sizeOf _ = fromIntegral size_of_libusb_control_setup

    alignment = sizeOf

    peek p =
        with 0 $ \p1 ->
        with 0 $ \p2 ->
        with 0 $ \p3 ->
        with 0 $ \p4 ->
        with 0 $ \p5 ->

        c2hs_libusb_control_setup p p1 p2 p3 p4 p5 >>

        peek p1 >>= \v1 ->
        peek p2 >>= \v2 ->
        peek p3 >>= \v3 ->
        peek p4 >>= \v4 ->
        peek p5 >>= \v5 ->

        return $ Libusb_control_setup v1 v2 v3 v4 v5

    poke p v = hs2c_libusb_control_setup p
        (libusb_control_setup'bmRequestType v)
        (libusb_control_setup'bRequest v)
        (libusb_control_setup'wValue v)
        (libusb_control_setup'wIndex v)
        (libusb_control_setup'wLength v)

data Libusb_iso_packet_descriptor = Libusb_iso_packet_descriptor {
    libusb_iso_packet_descriptor'length  ,
    libusb_iso_packet_descriptor'actual_length :: CUInt ,
    libusb_iso_packet_descriptor'status :: Libusb_transfer_status }

instance Storable Libusb_iso_packet_descriptor where
    sizeOf _ = fromIntegral size_of_libusb_iso_packet_descriptor
    alignment = sizeOf
    peek p =
        with 0 $ \p1 ->
        with 0 $ \p2 ->
        with 0 $ \p3 ->

        c2hs_libusb_iso_packet_descriptor p p1 p2 p3 >>

        peek p1 >>= \v1 ->
        peek p2 >>= \v2 ->
        peek p3 >>= \v3 ->

        return $ Libusb_iso_packet_descriptor v1 v2 v3

    poke p v = hs2c_libusb_iso_packet_descriptor p
        (libusb_iso_packet_descriptor'length v)
        (libusb_iso_packet_descriptor'actual_length v)
        (libusb_iso_packet_descriptor'status v)

data Libusb_transfer a = Libusb_transfer {
        libusb_transfer'dev_handle :: Ptr Libusb_device_handle ,
        libusb_transfer'flags :: Word8 ,
        libusb_transfer'endpoint  ,
        libusb_transfer'type :: CUChar ,
        libusb_transfer'timeout :: CUInt ,
        libusb_transfer'status :: Libusb_transfer_status ,
        libusb_transfer'length  ,
        libusb_transfer'actual_length :: CInt ,
        libusb_transfer'callback :: Libusb_transfer_cb_fn a,
        libusb_transfer'user_data :: Ptr a ,
        libusb_transfer'buffer :: Ptr CUChar ,
        libusb_transfer'num_iso_packets :: CInt ,
        libusb_transfer'iso_packet_desc :: () }

instance Storable (Libusb_transfer a) where
    sizeOf _ = fromIntegral size_of_libusb_transfer

    alignment = sizeOf

    peek p =
        with nullPtr $ \p1 ->
        with 0 $ \p2 ->
        with 0 $ \p3 ->
        with 0 $ \p4 ->
        with 0 $ \p5 ->
        with 0 $ \p6 ->
        with 0 $ \p7 ->
        with 0 $ \p8 ->
        with nullCallback $ \p9 ->
        with nullPtr $ \p10 ->
        with nullPtr $ \p11 ->
        with 0 $ \p12 ->

        c2hs_libusb_transfer p p1 p2 p3 p4 p5 p6 p7 p8 p9
            p10 p11 p12 >>

        peek p1 >>= \v1 ->
        peek p2 >>= \v2 ->
        peek p3 >>= \v3 ->
        peek p4 >>= \v4 ->
        peek p5 >>= \v5 ->
        peek p6 >>= \v6 ->
        peek p7 >>= \v7 ->
        peek p8 >>= \v8 ->
        peek p9 >>= \v9 ->
        peek p10 >>= \v10 ->
        peek p11 >>= \v11 ->
        peek p12 >>= \v12 ->

        return $ Libusb_transfer
            v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 ()

    poke p v = hs2c_libusb_transfer p
        (libusb_transfer'dev_handle v)
        (libusb_transfer'flags v)
        (libusb_transfer'endpoint v)
        (libusb_transfer'type v)
        (libusb_transfer'timeout v)
        (libusb_transfer'status v)
        (libusb_transfer'length v)
        (libusb_transfer'actual_length v)
        (libusb_transfer'callback v)
        (libusb_transfer'user_data v)
        (libusb_transfer'buffer v)
        (libusb_transfer'num_iso_packets v)

newtype Libusb_transfer_cb_fn a = Libusb_transfer_cb_fn
    (FunPtr ((Ptr (Libusb_transfer a)) -> IO ()))

instance Storable (Libusb_transfer_cb_fn a) where
    sizeOf _ = sizeOf (undefined :: FunPtr ())
    alignment = sizeOf
    peek p = (peek $ castPtr p) >>= (return . Libusb_transfer_cb_fn)
    poke p (Libusb_transfer_cb_fn v) = poke (castPtr p) v

instance Callback (Libusb_transfer_cb_fn a) where
    type F (Libusb_transfer_cb_fn a) = Ptr (Libusb_transfer a) -> IO ()
    nullCallback = Libusb_transfer_cb_fn nullFunPtr
    makeCallback f = mkCbTransfer f >>= (return . Libusb_transfer_cb_fn)
    freeCallback (Libusb_transfer_cb_fn f) = freeHaskellFunPtr f

type Libusb_transfer_status = CInt

type Libusb_transfer_flags = Word8

data Libusb_pollfd = Libusb_pollfd {
        pollfd'fd :: CInt ,
        pollfd'events :: CShort }

instance Storable Libusb_pollfd where
    sizeOf _ = fromIntegral size_of_libusb_pollfd
    alignment = sizeOf

    peek p = with 0 $ \p1 -> with 0 $ \p2 ->
        c2hs_libusb_pollfd p p1 p2 >>
        peek p1 >>= \v1 -> peek p2 >>= \v2 ->
        return Libusb_pollfd {pollfd'fd = v1, pollfd'events = v2}

    poke p v = hs2c_libusb_pollfd p
        (pollfd'fd v)
        (pollfd'events v)

newtype Libusb_pollfd_added_cb a = Libusb_pollfd_added_cb (FunPtr (CInt ->
    CShort -> Ptr a -> IO ()))

instance Storable (Libusb_pollfd_added_cb a) where
    sizeOf _ = sizeOf (undefined :: FunPtr ())
    alignment = sizeOf
    peek p = (peek $ castPtr p) >>= (return . Libusb_pollfd_added_cb)
    poke p (Libusb_pollfd_added_cb v) = poke (castPtr p) v

instance Callback (Libusb_pollfd_added_cb a) where
    type F (Libusb_pollfd_added_cb a) = CInt -> CShort -> Ptr a -> IO ()
    nullCallback = Libusb_pollfd_added_cb nullFunPtr
    makeCallback f = mkCbAdded f >>= (return . Libusb_pollfd_added_cb)
    freeCallback (Libusb_pollfd_added_cb f) = freeHaskellFunPtr f

newtype Libusb_pollfd_removed_cb a = Libusb_pollfd_removed_cb (FunPtr
    (CInt -> Ptr a -> IO ()))

instance Storable (Libusb_pollfd_removed_cb a) where
    sizeOf _ = sizeOf (undefined :: FunPtr ())
    alignment = sizeOf
    peek p = (peek $ castPtr p) >>= (return . Libusb_pollfd_removed_cb)
    poke p (Libusb_pollfd_removed_cb v) = poke (castPtr p) v

instance Callback (Libusb_pollfd_removed_cb a) where
    type F (Libusb_pollfd_removed_cb a) = CInt -> Ptr a -> IO ()
    nullCallback = Libusb_pollfd_removed_cb nullFunPtr
    makeCallback f = mkCbRemoved f >>= (return . Libusb_pollfd_removed_cb)
    freeCallback (Libusb_pollfd_removed_cb f) = freeHaskellFunPtr f

type Cb1 a = Ptr a -> IO ()
type Cb2 a = CInt -> CShort -> Ptr a -> IO ()
type Cb3 a = CInt -> Ptr a -> IO ()

foreign import ccall "wrapper" mkCbTransfer
    :: Cb1 a -> IO (FunPtr (Cb1 a))

foreign import ccall "wrapper" mkCbAdded
    :: Cb2 a -> IO (FunPtr (Cb2 a))

foreign import ccall "wrapper" mkCbRemoved
    :: Cb3 a -> IO (FunPtr (Cb3 a))

foreign import ccall "size_of_libusb_device_descriptor"
 size_of_libusb_device_descriptor
    :: CInt

foreign import ccall "size_of_libusb_endpoint_descriptor"
 size_of_libusb_endpoint_descriptor
    :: CInt

foreign import ccall "size_of_libusb_interface_descriptor"
 size_of_libusb_interface_descriptor
    :: CInt

foreign import ccall "size_of_libusb_interface"
 size_of_libusb_interface
    :: CInt

foreign import ccall "size_of_libusb_config_descriptor"
 size_of_libusb_config_descriptor
    :: CInt

foreign import ccall "size_of_libusb_control_setup"
 size_of_libusb_control_setup
    :: CInt

foreign import ccall "size_of_libusb_iso_packet_descriptor"
 size_of_libusb_iso_packet_descriptor
    :: CInt

foreign import ccall "size_of_libusb_transfer"
 size_of_libusb_transfer
    :: CInt

foreign import ccall "size_of_libusb_pollfd"
 size_of_libusb_pollfd
    :: CInt

foreign import ccall "hs2c_libusb_device_descriptor"
 hs2c_libusb_device_descriptor
    :: Ptr a -> Word8 -> Word8 -> Word16 -> Word8 -> Word8 ->
       Word8 -> Word8 -> Word16 -> Word16 -> Word16 -> Word8 ->
       Word8 -> Word8 -> Word8 -> IO ()

foreign import ccall "hs2c_libusb_endpoint_descriptor"
 hs2c_libusb_endpoint_descriptor
  :: Ptr a -> Word8 -> Word8 -> Word8 -> Word8 -> Word16 -> Word8 ->
     Word8 -> Word8 -> Ptr CUChar -> CInt -> IO ()

foreign import ccall "hs2c_libusb_interface_descriptor"
 hs2c_libusb_interface_descriptor
    :: Ptr a -> Word8 -> Word8 -> Word8 -> Word8 -> Word8 ->
       Word8 -> Word8 -> Word8 -> Word8 -> Ptr b ->
       Ptr CUChar -> CInt -> IO ()

foreign import ccall "hs2c_libusb_interface" hs2c_libusb_interface
    :: Ptr a -> Ptr b -> CInt -> IO ()

foreign import ccall "hs2c_libusb_config_descriptor"
 hs2c_libusb_config_descriptor
    :: Ptr a -> Word8 -> Word8 -> Word16 -> Word8 -> Word8 -> Word8 ->
       Word8 -> Word8 -> Ptr b -> Ptr CUChar -> CInt -> IO ()

foreign import ccall "hs2c_libusb_control_setup"
 hs2c_libusb_control_setup
    :: Ptr a -> Word8 -> Word8 -> Word16 -> Word16 -> Word16 -> IO ()

foreign import ccall "hs2c_libusb_iso_packet_descriptor"
 hs2c_libusb_iso_packet_descriptor
    :: Ptr a -> CUInt -> CUInt -> CInt -> IO ()

foreign import ccall "hs2c_libusb_transfer" hs2c_libusb_transfer
    :: Ptr a -> Ptr b -> Word8 -> CUChar -> CUChar -> CUInt ->
       CInt -> CInt -> CInt -> Libusb_transfer_cb_fn c ->
       Ptr d -> Ptr CUChar -> CInt -> IO ()

foreign import ccall "hs2c_libusb_pollfd" hs2c_libusb_pollfd
    :: Ptr a -> CInt -> CShort -> IO ()

foreign import ccall "c2hs_libusb_device_descriptor"
 c2hs_libusb_device_descriptor
    :: Ptr a -> Ptr Word8 -> Ptr Word8 -> Ptr Word16 -> Ptr Word8 ->
       Ptr Word8 -> Ptr Word8 -> Ptr Word8 -> Ptr Word16 ->
       Ptr Word16 -> Ptr Word16 -> Ptr Word8 -> Ptr Word8 ->
       Ptr Word8 -> Ptr Word8 -> IO ()

foreign import ccall "c2hs_libusb_endpoint_descriptor"
 c2hs_libusb_endpoint_descriptor
    :: Ptr a -> Ptr Word8 -> Ptr Word8 -> Ptr Word8 -> Ptr Word8 ->
       Ptr Word16 -> Ptr Word8 -> Ptr Word8 -> Ptr Word8 ->
       Ptr (Ptr CUChar) -> Ptr CInt -> IO ()

foreign import ccall "c2hs_libusb_interface_descriptor"
 c2hs_libusb_interface_descriptor
    :: Ptr a -> Ptr Word8 -> Ptr Word8 -> Ptr Word8 -> Ptr Word8 ->
       Ptr Word8 -> Ptr Word8 -> Ptr Word8 -> Ptr Word8 -> Ptr Word8 ->
       Ptr (Ptr b) -> Ptr (Ptr CUChar) -> Ptr CInt -> IO ()

foreign import ccall "c2hs_libusb_interface" c2hs_libusb_interface
    ::
 Ptr a -> Ptr (Ptr b) -> Ptr CInt -> IO ()

foreign import ccall "c2hs_libusb_config_descriptor"
 c2hs_libusb_config_descriptor
    :: Ptr a -> Ptr Word8 -> Ptr Word8 -> Ptr Word16 ->
       Ptr Word8 -> Ptr Word8 -> Ptr Word8 -> Ptr Word8 ->
       Ptr Word8 -> Ptr (Ptr b) -> Ptr (Ptr CUChar) ->
       Ptr CInt -> IO ()

foreign import ccall "c2hs_libusb_control_setup"
 c2hs_libusb_control_setup
    :: Ptr a -> Ptr Word8 -> Ptr Word8 -> Ptr Word16 ->
       Ptr Word16 -> Ptr Word16 -> IO ()

foreign import ccall "c2hs_libusb_iso_packet_descriptor"
 c2hs_libusb_iso_packet_descriptor
    :: Ptr a -> Ptr CUInt -> Ptr CUInt -> Ptr CInt -> IO ()

foreign import ccall "c2hs_libusb_transfer" c2hs_libusb_transfer
    :: Ptr a -> Ptr (Ptr b) -> Ptr Word8 -> Ptr CUChar ->
       Ptr CUChar -> Ptr CUInt -> Ptr CInt -> Ptr CInt -> Ptr CInt ->
       Ptr (Libusb_transfer_cb_fn c) -> Ptr (Ptr d) ->
       Ptr (Ptr CUChar) -> Ptr CInt ->   IO ()

foreign import ccall "c2hs_libusb_pollfd" c2hs_libusb_pollfd
    :: Ptr a -> Ptr CInt -> Ptr CShort -> IO ()

#include <libusb.h>

uint16_t _libusb_cpu_to_le16 (uint16_t x)
{
    return libusb_cpu_to_le16 (x);
}

uint16_t _libusb_le16_to_cpu (uint16_t x)
{
    return libusb_le16_to_cpu (x);
}


int libusb_get_descriptor2 ( libusb_device_handle * dev,
 uint8_t desc_type,
 uint8_t desc_index,
 unsigned char * data,
 int length 
 )
{
 libusb_get_descriptor (dev,desc_type,desc_index,data,length);
}
 

int libusb_get_string_descriptor2 ( libusb_device_handle * dev,
 uint8_t desc_index,
 uint16_t langid,
 unsigned char * data,
 int length 
 )
{
 libusb_get_string_descriptor(dev,desc_index,langid,data,length);
}

unsigned char* libusb_control_transfer_get_data2 ( struct libusb_transfer * transfer )
{
  libusb_control_transfer_get_data(transfer);
}

struct libusb_control_setup* libusb_control_transfer_get_setup2 ( struct libusb_transfer * transfer )
{
 libusb_control_transfer_get_setup (transfer);
}

void libusb_fill_control_setup2 ( unsigned char * buffer,
 uint8_t bmRequestType,
 uint8_t bRequest,
 uint16_t wValue,
 uint16_t wIndex,
 uint16_t wLength 
 )
{
 libusb_fill_control_setup(buffer,bmRequestType,bRequest,wValue,wIndex,wLength);
}

void libusb_fill_control_transfer2 ( struct libusb_transfer * transfer,
 libusb_device_handle * dev_handle,
 unsigned char * buffer,
 libusb_transfer_cb_fn callback,
 void * user_data,
 unsigned int timeout 
 )
{
  libusb_fill_control_transfer(transfer,dev_handle,buffer,callback,user_data,timeout);
}

void libusb_fill_bulk_transfer2 ( struct libusb_transfer * transfer,
 libusb_device_handle * dev_handle,
 unsigned char endpoint,
 unsigned char * buffer,
 int length,
 libusb_transfer_cb_fn callback,
 void * user_data,
 unsigned int timeout 
 )
{
 libusb_fill_bulk_transfer(transfer,dev_handle,endpoint,buffer,length,callback,user_data,timeout);
}
 
void libusb_fill_interrupt_transfer2 ( struct libusb_transfer * transfer,
 libusb_device_handle * dev_handle,
 unsigned char endpoint,
 unsigned char * buffer,
 int length,
 libusb_transfer_cb_fn callback,
 void * user_data,
 unsigned int timeout 
 )
{
  libusb_fill_interrupt_transfer(transfer,dev_handle,endpoint,buffer,length,callback,user_data,timeout);
}
 
void libusb_fill_iso_transfer2 ( struct libusb_transfer * transfer,
 libusb_device_handle * dev_handle,
 unsigned char endpoint,
 unsigned char * buffer,
 int length,
 int num_iso_packets,
 libusb_transfer_cb_fn callback,
 void * user_data,
 unsigned int timeout 
 )
{
 libusb_fill_iso_transfer(transfer,dev_handle,endpoint,buffer,length,num_iso_packets,callback,user_data,timeout);
}
 
void libusb_set_iso_packet_lengths2 ( struct libusb_transfer * transfer,
 unsigned int length 
 )
{
 libusb_set_iso_packet_lengths(transfer,length);
}
 
unsigned char* libusb_get_iso_packet_buffer2 ( struct libusb_transfer * transfer,
 unsigned int packet 
 ) 
{
 libusb_get_iso_packet_buffer(transfer,packet);
}

unsigned char* libusb_get_iso_packet_buffer_simple2 ( struct libusb_transfer * transfer,

 unsigned int packet 
 )
{
 libusb_get_iso_packet_buffer_simple(transfer,packet);
}



#CC=/home/work/tangzg/haima_t8/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-gcc
#ROOTFS_INC_DIR = /home/work/zhangd/T6A/rootfs/usr/include
#CFLAGS = -W -Wall -O2 -DLINUX -I$(ROOTFS_INC_DIR) 

#LIB_DIR = /home/work/zhangd/T6A/rootfs/usr/lib
#LFLAGS += -Wl,-rpath-link,$(LIB_DIR) -Wl,-rpath-link, -L $(LIB_DIR)
#LDFLAGS += -lg2d
OBJS = mxc_v4l2_tvin.o

TARGET = mxc_v4l2_tvin.out

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET) $(OBJS)

clean:
	rm -f *.o *.out


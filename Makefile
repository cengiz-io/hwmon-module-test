obj-m += peri.o
KDIR=/usr/src/linux-4.16.8

##/lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR) M=$(PWD) modules
clean:
	make -C $(KDIR) M=$(PWD) clean

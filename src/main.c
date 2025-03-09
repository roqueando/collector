#include <stdio.h>
#include <zephyr/kernel.h>
#include <zephyr/sys/printk.h>

void main()
{
    k_msleep(500);
    printf("Hello, World!\n");
    printk("Zephyr Example Application 1.0\n");
}

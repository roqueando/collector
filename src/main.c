#include <zephyr/kernel.h>
#include <zephyr/drivers/sensor.h>
#include <zephyr/logging/log.h>

int main(void)
{
	while (1) {
	   printk("Zephyr Example Application 1.0\n");
		k_sleep(K_MSEC(100));
	}

	return 0;
}

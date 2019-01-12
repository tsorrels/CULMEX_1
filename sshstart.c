#include <unistd.h>
#include <stdio.h>

int main()
{

	while (1)
	{
		usleep(500);
		if (fork())
		{
			execl("/bin/systemctl", "systemctl", "start", "ssh", (char *) NULL);
		}
	}

	return 0;
}

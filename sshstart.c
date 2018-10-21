#include <unistd.h>


int main()
{

	while (1)
	{
		if (fork())
		{
			execl("/bin/systemctl", "systemctl", "start", "ssh", (char *) NULL);
		}
	}

	return 0;
}

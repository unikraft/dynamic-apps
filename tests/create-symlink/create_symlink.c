#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void)
{
	int rc;

	/* Remove link if it exists. */
	unlink("link");

	rc = symlink("Makefile", "link");
	if (rc < 0) {
		perror("symlink");
		exit(EXIT_FAILURE);
	}

	return 0;
}

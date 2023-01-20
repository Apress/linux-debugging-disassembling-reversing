#include <stdio.h>
#include "Arithmetic.h"

int main(int argc, char* argv[])
{
	int a, b;

	printf("Enter a and b: ");
	scanf("%d %d", &a, &b);

	if (arithmetic (a, &b))
	{
		printf("Result = %d", b);
	}

	return 0;
}


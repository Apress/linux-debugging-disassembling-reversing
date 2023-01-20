int a, b;
int *pa, *pb;

int main(int argc, char* argv[])
{
	pa = &a;
	pb = &b;

	*pa = 1;
	*pb = 1;

	*pb = *pb + *pa;

	++*pa;

	*pb = *pb * *pa;

	return 0;
}

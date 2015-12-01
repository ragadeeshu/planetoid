#include "Bonobo.h"
#include "Deferred.h"

#ifdef main
#	undef main
#endif
int main(int argc, const char* argv[])
{
	Bonobo::Init();

	Deferred *deferred = new Deferred(argc, argv);
	deferred->run();
    delete deferred;
    deferred = nullptr;

	Bonobo::Destroy();
}


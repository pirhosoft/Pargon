# Pargon

Pargon is a game and application framework consisting of several modules with self contained implementations. These implementations are in repositories of their own and consumed by this repository as git submodules. To clone this repository along with the submodules use:

	git clone --recursive https://github.com/pirhosoft/Pargon.git

If you have already cloned the repository without the submodules use (from inside the cloned directory):

	git submodule init
	git submodule update

## Building

Pargon is in the process of migrating to a cmake build system. Currently only Visual Studio project generation has been implemented and tested. Cross platform support is of critical importance to Pargon so that implementation will come soon. To generate the Visual Studio build system run the following from the Pargon root folder:

	cmake -S . -B Build

You can then open Build/Pargon.sln and use Visual Studio or run:

	cmake --build Build

## Submodules

This is for internal reference as Pargon is migrating to cmake and submodules. To add a new submodule run:

	git submodule add ../Pargon[Name].git Modules/[NAME]

where Pargon[Name] is the name of the submodule repository in the PiRhoSoft organization. If a submodule has changed in the local checkout update it as if it were a normal repository. The Pargon repository will detect the changes which can then be committed just as if a file had changed. If a submodule has changed externally and you want to update your local checkout, pull the changes into the submodule checkout. The Pargon repository will detect the changes in this case as well. Put simply:

 * If a submodule changed internally: push the submodule, add and commit Pargon
 * If a submodule changed externally: pull the submodule, add and commit Pargon

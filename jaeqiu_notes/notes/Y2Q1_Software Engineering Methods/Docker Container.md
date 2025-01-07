energy consumption containers
same software different container images:
because of different image binaries
In containerization, all containers share the host's kernel. Therefore, the kernel does not contribute to the energy consumption differences between containers.
Containers are lightweight and do not use a hypervisor like virtual machines do, as they run directly on the host OS.
The energy consumption can vary significantly depending on the specific binaries and libraries included in the container images. Different container images might have different optimization levels, dependencies, and resource usage patterns, leading to variations in energy consumption.

Using Docker results in less overhead than when using Virtual Machines
Replicating identical environments across machines is easier with Docker than by installing things manually


Using Docker yields worse isolation than when using Virtual Machines
Software in Docker containers tends to be less up to date than when applications are installed manually on a server.

+ docker containers are more lightweight
+ start up faster
+ have a lower energy impact
+ are more portable

+ have worse isolation than VM, because of its shared host
+ can only run host-os compatible apps
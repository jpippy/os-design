#pragma once

NTSTATUS 
NTAPI
NtfsFsdPnp (
	IN PVOLUME_DEVICE_OBJECT VolumeDeviceObject,
	IN PIRP Irp
	);

#if !defined( __DIVIDE_C_FILE__ )
#include "lfs\\lfs-sysinit.c"
#endif // !defined( __DIVIDE_C_FILE__ )

/*++

Copyright (c) 1990  Microsoft Corporation

Module Name:

    SysInit.c

Abstract:

    This module implements the Log File Service initialization.

Author:

    Brian Andrew    [BrianAn]   20-June-1991

Revision History:

--*/

#include "lfsprocs.h"

#if !defined( __DIVIDE_C_FILE__ )
//*
#include "lfs-Cachesup.c"
#include "Registry.c"

#include "lbcbsup.c"
#include "lfsdata.c"
#include "logpgsup.c"
#include "logrcsup.c"
#include "lsnsup.c"
#include "querylog.c"
#include "restart.c"
#include "rstrtsup.c"
#include "lfs-strucsup.c"
#include "lfs-verfysup.c"

#include "lfs-write.c"
//*/
#endif // !defined( __DIVIDE_C_FILE__ )

//
//  The debug trace level
//

#ifndef Dbg
#define Dbg                              (DEBUG_TRACE_INITIALIZATION)
#endif

#ifdef ALLOC_PRAGMA
#pragma alloc_text(PAGE, LfsInitializeLogFileService)
#endif

extern USHORT LfsUsaSeqNumber;


BOOLEAN
LfsInitializeLogFileService (
    )

/*++

Routine Description:

    This routine must be called during system initialization before the
    first call to logging service, to allow the Log File Service to initialize
    its global data structures.  This routine has no dependencies on other
    system components being initialized.

    This routine will initialize the global structures used by the logging
    service and start the Lfs worker thread.

Arguments:

    None

Return Value:

    TRUE if initialization was successful

--*/

{
    LARGE_INTEGER CurrentTime;

    PAGED_CODE();

    LfsDebugTrace( +1, Dbg, "LfsInitializeLogFileService:  Enter\n", 0 );

    //
    //  If the structure has already been initialized then we can return
    //  immediately.
    //

    if (LfsData.NodeTypeCode == LFS_NTC_DATA
        && LfsData.NodeByteSize == sizeof( LFS_DATA )
        && FlagOn( LfsData.Flags, LFS_DATA_INITIALIZED )) {

        LfsDebugTrace( -1, Dbg, "LfsInitializeLogFileService:  Exit  ->  %01x\n", TRUE );

        return TRUE;
    }

    //
    //  Zero out the structure initially.
    //

    RtlZeroMemory( &LfsData, sizeof( LFS_DATA ));

    //
    //  Assume the operation will fail.
    //

    LfsData.Flags = LFS_DATA_INIT_FAILED;

    //
    //  Initialize the global structure for Lfs.
    //

    LfsData.NodeTypeCode = LFS_NTC_DATA;
    LfsData.NodeByteSize = sizeof( LFS_DATA );

    InitializeListHead( &LfsData.LfcbLinks );

    //
    //  Allocate and initialize the synchronization objects.
    //

    KeInitializeEvent( &LfsData.Event,
                       SynchronizationEvent,
                       TRUE );

    //
    //  Initialization has been successful.
    //

    ClearFlag( LfsData.Flags, LFS_DATA_INIT_FAILED );
    SetFlag( LfsData.Flags, LFS_DATA_INITIALIZED );

    //
    //  Get a random number as a seed for the Usa sequence numbers.  Use the lower
    //  bits of the current time.
    //

    KeQuerySystemTime( &CurrentTime );
    LfsUsaSeqNumber = (USHORT) CurrentTime.LowPart;

    LfsDebugTrace( -1, Dbg, "LfsInitializeLogFileService:  Exit  ->  %01x\n", TRUE );

    return TRUE;
}


#if !defined (NTDDI_VERSION)

#if DBG!=0
int __cdecl memcmp (const void * buf1, const void * buf2, size_t count )
{
	if (!count)
		return(0);
	
	while ( --count && *(char *)buf1 == *(char *)buf2 ) {
		buf1 = (char *)buf1 + 1;
		buf2 = (char *)buf2 + 1;
	}
	
	return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
}
#endif	// DBG!=0

#endif	// !defined (NTDDI_VERSION)

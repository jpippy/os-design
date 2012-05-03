# Microsoft Developer Studio Project File - Name="ntfs" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=ntfs - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ntfs-win2000-ddk2000.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ntfs-win2000-ddk2000.mak" CFG="ntfs - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ntfs - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "ntfs - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ntfs - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /Gz /W3 /WX /Oy /Gy /D "WIN32" /Oxs /c
# ADD CPP /nologo /Gz /W3 /O2 /I ".\sdk\inc" /I "$(BASEDIR)\inc\ddk\w2k" /I "$(BASEDIR)\inc\ddk\wdm\w2k" /I "$(BASEDIR)\inc\w2k" /D WINNT=1 /D _WIN32_WINNT=0x0400 /D DBG=0 /D _X86_=1 /D __DIVIDE_C_FILE__=1 /FAcs /YX /Oxs /Zel -cbstring /QIfdiv- /QIf /GF /c
# SUBTRACT CPP /WX /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /i "$(BASEDIR)\inc" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /machine:IX86
# ADD LINK32 ntoskrnl.lib hal.lib /nologo /base:"0x10000" /version:5.1 /entry:"DriverEntry" /map /machine:IX86 /nodefaultlib /out:"Release\ntfs.sys" /libpath:"$(BASEDIR)\lib\w2k\i386" /driver /IGNORE:4078 /MERGE:_PAGE=PAGE /MERGE:_TEXT=.text /SECTION:INIT,d /OPT:REF /align:0x20 /osversion:5.1 /subsystem:native,5.1
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /Gz /W3 /Zi /Od /D "WIN32" /YX /FD /c
# ADD CPP /Gz /W3 /Z7 /Od /Gy /I ".\sdk\inc" /I "$(BASEDIR)\inc\ddk\w2k" /I "$(BASEDIR)\inc\ddk\wdm\w2k" /I "$(BASEDIR)\inc\w2k" /D WINNT=1 /D _WIN32_WINNT=0x0400 /D DBG=1 /D _X86_=1 /D __DIVIDE_C_FILE__=1 /FAcs /FR /YX /FD /Zel -cbstring /QIfdiv- /QIf /GF /c
# SUBTRACT CPP /nologo /WX
# ADD BASE MTL /nologo /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /i "$(BASEDIR)\inc"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /machine:IX86
# ADD LINK32 ntoskrnl.lib hal.lib /base:"0x10000" /version:5.1 /entry:"DriverEntry" /incremental:no /map /debug /machine:IX86 /nodefaultlib /out:"Debug\ntfs.sys" /libpath:"$(BASEDIR)\lib\w2k\i386" /driver /ignore:4078 /MERGE:_PAGE=PAGE /MERGE:_TEXT=.text /SECTION:INIT,d /OPT:REF /align:0x20 /osversion:5.1 /subsystem:native,5.1
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "ntfs - Win32 Release"
# Name "ntfs - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\allocsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\attrdata.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\attrsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\bitmpsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\cachesup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\checksup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\cleanup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\close.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\colatsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\create.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\devctrl.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\deviosup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\dirctrl.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\ea.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\fileinfo.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\filobsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\flush.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\fsctrl.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\fspdisp.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\fstiosup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\indexsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lockctrl.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\logsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\mcbsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\mftsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\namesup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\ntfsdata.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\ntfsinit.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\pnppower.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\prefxsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\read.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\resrcsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\restrsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\secursup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\seinfo.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\shutdown.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\strucsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\verfysup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\volinfo.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\workque.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\write.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\index.h
# End Source File
# Begin Source File

SOURCE=..\nodetype.h
# End Source File
# Begin Source File

SOURCE=..\ntfs.h
# End Source File
# Begin Source File

SOURCE=..\ntfsdata.h
# End Source File
# Begin Source File

SOURCE=..\ntfsHead.h
# End Source File
# Begin Source File

SOURCE=..\ntfslog.h
# End Source File
# Begin Source File

SOURCE=..\ntfsproc.h
# End Source File
# Begin Source File

SOURCE=..\ntfsstru.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "lfs"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\lfs\lbcbsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE="..\lfs\lfs-cachesup.c"

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE="..\lfs\lfs-nodetype.h"
# End Source File
# Begin Source File

SOURCE="..\lfs\lfs-strucsup.c"

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE="..\lfs\lfs-sysinit.c"

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE="..\lfs\lfs-verfysup.c"

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE="..\lfs\lfs-write.c"

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lfs\lfsdata.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lfs\lfsdata.h
# End Source File
# Begin Source File

SOURCE=..\lfs\lfsdisk.h
# End Source File
# Begin Source File

SOURCE=..\lfs\lfsprocs.h
# End Source File
# Begin Source File

SOURCE=..\lfs\lfsstruc.h
# End Source File
# Begin Source File

SOURCE=..\lfs\logpgsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lfs\logrcsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lfs\lsnsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lfs\querylog.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lfs\Registry.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lfs\restart.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\lfs\rstrtsup.c

!IF  "$(CFG)" == "ntfs - Win32 Release"

!ELSEIF  "$(CFG)" == "ntfs - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "inc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\sdk\inc\cache.h
# End Source File
# Begin Source File

SOURCE=..\sdk\inc\ex.h
# End Source File
# Begin Source File

SOURCE=..\sdk\inc\fsrtl.h
# End Source File
# Begin Source File

SOURCE=..\sdk\inc\lfs.h
# End Source File
# Begin Source File

SOURCE=..\sdk\inc\ntapi.h
# End Source File
# Begin Source File

SOURCE=..\sdk\inc\ntimage.h
# End Source File
# Begin Source File

SOURCE=..\sdk\inc\ntioapi.h
# End Source File
# Begin Source File

SOURCE=..\sdk\inc\ntrtl.h
# End Source File
# Begin Source File

SOURCE=..\sdk\inc\ntseapi.h
# End Source File
# End Group
# End Target
# End Project

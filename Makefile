# Makefile for StrongCopy
#

COMPONENT  = StrongCopy
TYPE       = aif
INCLUDES   = <Lib$Dir>.Getopt.
OBJS       = o.strongcopy \
             o.unixdirs
CDEFINES   = -DSCL
LIBS       = ${CLIB} <Lib$Dir>.GetOpt.o.LibGetOpt

include LibraryCommand

#---------------------------------------------------------------------------
# Dynamic dependencies:
o.strongcopy: c.strongcopy h.unixdirs <Lib$Dir>.Getopt.h.getopt C:h.kernel C:h.swis

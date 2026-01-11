# Makefile for StrongCopy
#

COMPONENT  = StrongCopy
TYPE       = aif
INCLUDES   = C:GetOpt.
OBJS       = o.strongcopy \
             o.unixdirs
CDEFINES   = -DSCL
LIBS       = ${CLIB} C:GetOpt.o.libGetOpt

include LibraryCommand

#---------------------------------------------------------------------------
# Dynamic dependencies:
o.strongcopy: c.strongcopy h.unixdirs C:Getopt.h.getopt C:h.kernel C:h.swis

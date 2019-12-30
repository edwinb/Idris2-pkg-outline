IDRIS           := idris2
MACHINE         := $(shell $(CC) -dumpmachine)

ifneq (, $(findstring darwin, $(MACHINE)))
	OS      :=darwin
else ifneq (, $(findstring cygwin, $(MACHINE)))
	OS      :=windows
else ifneq (, $(findstring mingw, $(MACHINE)))
	OS      :=windows
else ifneq (, $(findstring windows, $(MACHINE)))
	OS      :=windows
else
	OS      :=unix
endif

ifeq ($(OS), darwin)
        SHLIB_SUFFIX    :=dylib
else ifeq ($(OS), windows)
        SHLIB_SUFFIX    :=dll
else
        SHLIB_SUFFIX    :=so
endif

LIBTARGET = libtest.$(SHLIB_SUFFIX)
INSTALLDIR = `${IDRIS} --libdir`/testpkg/lib

HDRS = testc.h
OBJS = testc.o

$(LIBTARGET): $(OBJS)
	$(CC) -o $(LIBTARGET) -shared $(OBJS)
	
install:
	@if ! [ -d $(INSTALLDIR) ]; then mkdir -p $(INSTALLDIR); fi
	install $(LIBTARGET) $(HDRS) $(INSTALLDIR)

.PHONY: install clean

PREFIX ?= /usr/local
LIBDIR ?= /lib

clientbuffer.so : clientbuffer.cpp
	znc-buildmod clientbuffer.cpp

install: clientbuffer.so
	install -Dm 755 clientbuffer.so $(DESTDIR)$(PREFIX)$(LIBDIR)/znc/clientbuffer.so

An Idris library with basic FFI
===============================

This is a starting point for any Idris 2 package which might need some C glue
code to call external libraries.

It also shows some small examples of foreign function calls:

* one pure function
* one which does some IO, via PrimIO
* one which has a callback

In order to make the FFI as easily portable across different backends as
possible, it only knows how to deal with primitive types (including
Ptr/AnyPtr), PrimIO, and callbacks involving primitive types.

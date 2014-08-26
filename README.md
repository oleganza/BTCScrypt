BTCScrypt
=========

Objective-C interface to Colin Percival's Scrypt with progress block (yeah!).

How to:

1. Drop all the files in your project.
2. Check only one of scrypt-*.c files (e.g. scrypt-nosse.c).
3. Run BTCScrypt().


Why BTC prefix?
---------------

It's actually a part of my [CoreBitcoin](http://github.com/oleganza/CoreBitcoin/tree/master/CoreBitcoin) project, but for licensing reasons not included (I do not want to bloat CoreBitcoin with many different licenses for people to worry about, OpenSSL is enough already).


LICENSE
-------

BTCScrypt wrapper is licensed under WTFPL.

The scrypt implementation is licensed under 2-clause BSD license:

Copyright 2009 Colin Percival
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
SUCH DAMAGE.

This file was originally written by Colin Percival as part of the Tarsnap
online backup system.

// BTCScrypt, API to Colin Percival's Scrypt.
// Oleg Andreev <oleganza@gmail.com>
// WTFPL

#import <Foundation/Foundation.h>

// These parameters require 3-4 seconds on Intel Core i7 2GHz (23-25 seconds on iPhone 5) and 64 Mb of memory:
//   N = 1<<16, r = 8, p = 4.
// These parameters require 1 second on Intel Core i7 2GHz (5-6 seconds on iPhone 5) and 64 Mb of memory:
//   N = 1<<16, r = 8, p = 1.
//
// - N is a general "load" parameter. Increase it to require more memory and make computation slower.
// - r is a "memory" tuning parameter. Make it higher to require more memory without increasing CPU time much.
// - p is a "parallelism", or CPU tuning parameter. Make it higher to make execution slower within the same amount of memory.
//
// keyLength is a byte length of a resulting key. Typical value is 32 (256-bit key).
//
// Progress block is optional.
//
NSMutableData* BTCScrypt(NSUInteger keyLength, NSData* password, NSData* salt, uint64_t N, uint32_t r, uint32_t p, void(^progress)(double));

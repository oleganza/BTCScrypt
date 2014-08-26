// BTCScrypt, API to Colin Percival's Scrypt.
// Oleg Andreev <oleganza@gmail.com>
// WTFPL

#import "BTCScrypt.h"
#import "scrypt.h"

// See http://tools.ietf.org/html/draft-josefsson-scrypt-kdf-00#section-7 for test vectors.
//
NSMutableData* BTCScrypt(NSUInteger keyLength, NSData* password, NSData* salt, uint64_t N, uint32_t r, uint32_t p, void(^progress)(double))
{
    if (!password) return nil;
    if (!salt) return nil;
    if (keyLength < 1) return nil;
    
    NSMutableData* key = [[NSMutableData alloc] initWithLength:keyLength];
    
    if (0 == crypto_scrypt(password.bytes,
                           password.length,
                           salt.bytes,
                           salt.length,
                           N, r, p,
                           key.mutableBytes,
                           keyLength,
                           progress))
    {
        
        return key;
    }
    
    return nil;
}

// Requires CoreBitcoin to provide BTCData.
#import "BTCScrypt.h"
#import "BTCScryptTest.h"
#import "BTCData.h"

/*
 scrypt (P="", S="",
 N=16, r=1, p=1, dklen=64) =
 77 d6 57 62 38 65 7b 20 3b 19 ca 42 c1 8a 04 97
 f1 6b 48 44 e3 07 4a e8 df df fa 3f ed e2 14 42
 fc d0 06 9d ed 09 48 f8 32 6a 75 3a 0f c8 1f 17
 e8 d3 e0 fb 2e 0d 36 28 cf 35 e2 0c 38 d1 89 06
 
 
 scrypt (P="password", S="NaCl",
 N=1024, r=8, p=16, dkLen=64) =
 fd ba be 1c 9d 34 72 00 78 56 e7 19 0d 01 e9 fe
 7c 6a d7 cb c8 23 78 30 e7 73 76 63 4b 37 31 62
 2e af 30 d9 2e 22 a3 88 6f f1 09 27 9d 98 30 da
 c7 27 af b9 4a 83 ee 6d 83 60 cb df a2 cc 06 40
 
 
 scrypt (P="pleaseletmein", S="SodiumChloride",
 N=16384, r=8, p=1, dkLen=64) =
 70 23 bd cb 3a fd 73 48 46 1c 06 cd 81 fd 38 eb
 fd a8 fb ba 90 4f 8e 3e a9 b5 43 f6 54 5d a1 f2
 d5 43 29 55 61 3f 0f cf 62 d4 97 05 24 2a 9a f9
 e6 1e 85 dc 0d 65 1e 40 df cf 01 7b 45 57 58 87
 
 
 scrypt (P="pleaseletmein", S="SodiumChloride",
 N=1048576, r=8, p=1, dkLen=64) =
 21 01 cb 9b 6a 51 1a ae ad db be 09 cf 70 f8 81
 ec 56 8d 57 4a 2f fd 4d ab e5 ee 98 20 ad aa 47
 8e 56 fd 8f 4b a5 d0 9f fa 1c 6d 92 7c 40 f4 c3
 37 30 40 49 e8 a9 52 fb cb f4 5c 6f a7 7a 41 a4
*/


void BTCScryptTestVectors()
{
    {
        NSData* vector = BTCDataWithHexCString("77d6576238657b203b19ca42c18a0497"
                                               "f16b4844e3074ae8dfdffa3fede21442"
                                               "fcd0069ded0948f8326a753a0fc81f17"
                                               "e8d3e0fb2e0d3628cf35e20c38d18906");
        
        NSData* result = BTCScrypt(64, BTCDataWithUTF8CString(""), BTCDataWithUTF8CString(""), 16, 1, 1, nil);
        
        NSCAssert([result isEqual:vector], @"Should match for N = 16, r = 1, p = 1");
    }
    
    {
        NSData* vector = BTCDataWithHexCString("fdbabe1c9d3472007856e7190d01e9fe"
                                               "7c6ad7cbc8237830e77376634b373162"
                                               "2eaf30d92e22a3886ff109279d9830da"
                                               "c727afb94a83ee6d8360cbdfa2cc0640");
        
        NSData* result = BTCScrypt(64, BTCDataWithUTF8CString("password"), BTCDataWithUTF8CString("NaCl"), 1024, 8, 16, nil);
        
        NSCAssert([result isEqual:vector], @"Should match for N = 16, r = 8, p = 16");
    }
    
    {
        NSData* vector = BTCDataWithHexCString("7023bdcb3afd7348461c06cd81fd38eb"
                                               "fda8fbba904f8e3ea9b543f6545da1f2"
                                               "d5432955613f0fcf62d49705242a9af9"
                                               "e61e85dc0d651e40dfcf017b45575887");
        
        NSData* result = BTCScrypt(64, BTCDataWithUTF8CString("pleaseletmein"), BTCDataWithUTF8CString("SodiumChloride"), 16384, 8, 1, nil);
        
        NSCAssert([result isEqual:vector], @"Should match for N = 16384, r = 8, p = 1");
    }
    
    {
        NSData* vector = BTCDataWithHexCString("2101cb9b6a511aaeaddbbe09cf70f881"
                                               "ec568d574a2ffd4dabe5ee9820adaa47"
                                               "8e56fd8f4ba5d09ffa1c6d927c40f4c3"
                                               "37304049e8a952fbcbf45c6fa77a41a4");
        
        NSData* result = BTCScrypt(64, BTCDataWithUTF8CString("pleaseletmein"), BTCDataWithUTF8CString("SodiumChloride"), 1048576, 8, 1, nil);
        
        NSCAssert([result isEqual:vector], @"Should match for N = 1048576, r = 8, p = 1");
    }
}


//
//  NSData+AES.h
//  iOS开发之AES+Base64数据混合加密与解密
//
//  Created by mac on 16/6/1.
//  Copyright © 2016年 ZnLG. All rights reserved.
//
/*
 "APP的数据安全已经牵动着我们开发者的心，简单的MD5/Base64等已经难以满足当下的数据安全标准，本文简单的介绍下AES与Base64的混合加密与解密"
 AES:高级加密标准（英语：Advanced Encryption Standard，缩写：AES），在密码学中又称Rijndael加密法，是美国联邦政府采用的一种区块加密标准。这个标准用来替代原先的DES，已经被多方分析且广为全世界所使用。经过五年的甄选流程，高级加密标准由美国国家标准与技术研究院（NIST）于2001年11月26日发布于FIPS PUB 197，并在2002年5月26日成为有效的标准。2006年，高级加密标准已然成为对称密钥加密中最流行的算法之一。
 */

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

@interface NSData (AES)
//加密
- (NSData *) AES256_Encrypt:(NSString *)key;

//解密
- (NSData *) AES256_Decrypt:(NSString *)key;

//追加64编码
- (NSString *)newStringInBase64FromData;

//同上64编码
+ (NSString*)base64encode:(NSString*)str;
@end

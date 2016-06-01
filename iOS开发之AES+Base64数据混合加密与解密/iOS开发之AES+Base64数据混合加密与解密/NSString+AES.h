//
//  NSString+AES.h
//  iOS开发之AES+Base64数据混合加密与解密
//
//  Created by mac on 16/6/1.
//  Copyright © 2016年 ZnLG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+AES.h"

@interface NSString (AES)
//加密
- (NSString *) AES256_Encrypt:(NSString *)key;

//解密
- (NSString *) AES256_Decrypt:(NSString *)key;
@end

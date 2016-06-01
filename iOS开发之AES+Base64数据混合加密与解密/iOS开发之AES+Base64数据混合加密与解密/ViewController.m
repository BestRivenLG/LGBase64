//
//  ViewController.m
//  iOS开发之AES+Base64数据混合加密与解密
//
//  Created by mac on 16/6/1.
//  Copyright © 2016年 ZnLG. All rights reserved.
//

#import "ViewController.h"
#import "NSString+AES.h"

#define key @"12345678"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textOneView;
@property (weak, nonatomic) IBOutlet UITextView *textTwoView;
@property (weak, nonatomic) IBOutlet UITextView *textThreeView;
@property (weak, nonatomic) IBOutlet UITextView *textFourView;
@property (weak, nonatomic) IBOutlet UITextView *textFiveView;
@property (copy,nonatomic) NSData *plain;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //字符串加密
//    NSString *key = @"12345678";
    
    NSString *secret = @"aes Bison base64";
    
    NSLog(@"字符串加密---%@",[secret AES256_Encrypt:key]);

    //字符串解密
    NSLog(@"字符串解密---%@",[[secret AES256_Encrypt:key] AES256_Decrypt:key]);
    //NSData加密+base64
    NSData *plain = [secret dataUsingEncoding:NSUTF8StringEncoding];
    
    NSData *cipher = [plain AES256_Encrypt:key];
    
    NSLog(@"NSData加密+base64++++%@",[cipher newStringInBase64FromData]);
    
    plain = [cipher AES256_Decrypt:key];
    
    NSLog(@"NSData解密+base64++++%@", [[NSString alloc] initWithData:plain encoding:NSUTF8StringEncoding]);
    
}

//字符串加密
- (IBAction)changeOneAction:(id)sender {
    
    
    self.textTwoView.text =  [self.textOneView.text AES256_Encrypt:key];
    
    NSLog(@"字符串加密---%@",self.textTwoView.text);
}

//字符串解密
- (IBAction)backOneAction:(id)sender {
    self.textThreeView.text = [self.textTwoView.text AES256_Decrypt:key];
    NSLog(@"字符串加密---%@",self.textThreeView.text);
}

//NSData加密+base64
- (IBAction)changeTwoAction:(id)sender {
    
    self.plain =[[self.textOneView.text dataUsingEncoding:NSUTF8StringEncoding] AES256_Encrypt:key];
    self.textFourView.text = [self.plain newStringInBase64FromData] ;
    NSLog(@"字符串加密---%@",self.textFourView.text);
}

//NSData解密+base64
- (IBAction)backTwoAction:(id)sender {
    
    self.textFiveView.text = [[NSString alloc]initWithData: [self.plain AES256_Decrypt:key] encoding:NSUTF8StringEncoding];
    NSLog(@"字符串加密---%@",self.textFiveView.text);

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}



@end

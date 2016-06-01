//
//  ViewController.m
//  Base64编码解码
//
//  Created by mac on 16/5/13.
//  Copyright © 2016年 ZnLG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *inputTextView;
@property (weak, nonatomic) IBOutlet UITextView *changeTextView;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeAction:(id)sender {
    
    
    NSData* originData = [self.inputTextView.text dataUsingEncoding:NSUTF8StringEncoding];
    
    NSString* encodeResult = [originData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
//    NSLog(@"encodeResult:%@",encodeResult);
    self.changeTextView.text = encodeResult;
    
   
    
}
- (IBAction)resultAction:(id)sender {
    
    NSData* decodeData = [[NSData alloc] initWithBase64EncodedString:self.changeTextView.text options:0];
    
    NSString* decodeStr = [[NSString alloc] initWithData:decodeData encoding:NSUTF8StringEncoding];
    self.resultTextView.text = decodeStr;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end

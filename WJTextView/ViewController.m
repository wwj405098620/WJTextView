//
//  ViewController.m
//  WJTextView
//
//  Created by fosung_newMac on 15/6/23.
//  Copyright (c) 2015年 fosung_newMac. All rights reserved.
//

#import "ViewController.h"
#import "WJTextView.h"
@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WJTextView *textView = [[WJTextView alloc]initWithFrame:CGRectZero];
    textView.placeHolder = @"再次填写密码";
    textView.fontOfPlaceHolder = [UIFont systemFontOfSize:15];
    textView.text = @"wenjie";
    textView.delegate = self;
    textView.backgroundColor = [UIColor colorWithRed:1.000 green:0.988 blue:0.898 alpha:1.000];
    textView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:textView];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:30];
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:textView attribute:NSLayoutAttributeRight multiplier:1.0 constant:30];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:100];
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:50];
 
    [self.view addConstraint:left];
    [self.view addConstraint:right];
    [self.view addConstraint:top];
    [textView addConstraint:height];
    

}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
    }
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

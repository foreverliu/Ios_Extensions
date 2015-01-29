//
//  UIAlertView+Block.h
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
// 

#import <UIKit/UIKit.h>

typedef void (^UIAlertViewZJCompletionBlock)(UIAlertView *alertView, NSUInteger buttonIndex);

@interface UIAlertView (ZJBlock)

@property (nonatomic, copy) UIAlertViewZJCompletionBlock zjCompletitionBlock;

@end

//
//  UIAlertView+Block.m
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
//

#import "UIAlertView+ZJBlock.h"
#import <objc/runtime.h>

NSString *const ZJUIAlertViewBlockPropertyKey = @"ZJUIAlertViewBlockPropertyKey";

@implementation UIAlertView (ZJBlock)

-(void)setZjCompletitionBlock:(UIAlertViewZJCompletionBlock)zjCompletitionBlock
{
    if (zjCompletitionBlock) {
        self.delegate = self;
        objc_setAssociatedObject(self,  (__bridge const void *)(ZJUIAlertViewBlockPropertyKey), zjCompletitionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
}

-(UIAlertViewZJCompletionBlock)zjCompletitionBlock
{
    return objc_getAssociatedObject(self, (__bridge const void *)(ZJUIAlertViewBlockPropertyKey));
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (self.zjCompletitionBlock) {
        self.zjCompletitionBlock(alertView, buttonIndex);
    }
}


@end

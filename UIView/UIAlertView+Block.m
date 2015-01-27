//
//  UIAlertView+Block.m
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
//

#import "UIAlertView+Block.h"
#import <objc/runtime.h>


@implementation UIAlertView (Block)

-(void)setZjCompletitionBlock:(UIAlertViewZJCompletionBlock)zjCompletitionBlock
{
    self.delegate = self;
    objc_setAssociatedObject(self, CFBridgingRetain(self.zj_defaultKey), zjCompletitionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(UIAlertViewZJCompletionBlock)zjCompletitionBlock
{
    return objc_getAssociatedObject(self, CFBridgingRetain(self.zj_defaultKey));
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (self.zjCompletitionBlock) {
        self.zjCompletitionBlock(alertView, buttonIndex);
    }
}


- (NSString *)zj_defaultKey
{
    return [NSString stringWithFormat:@"%p",self];
}
@end

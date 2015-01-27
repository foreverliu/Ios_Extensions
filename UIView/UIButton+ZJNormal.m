//
//  UIButton+ZJNormal.m
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
//

#import "UIButton+ZJNormal.h"

@implementation UIButton (ZJNormal)

#pragma mark -

+ (UIButton *)zjButtonWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage isBackground:(BOOL)isBackground {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    if (isBackground) {
        [button setBackgroundImage:image forState:UIControlStateNormal];
    } else {
        [button setImage:image forState:UIControlStateNormal];
    }
    
    if (highlightedImage) {
        if (isBackground) {
            [button setBackgroundImage:highlightedImage forState:UIControlStateHighlighted];
        } else {
            [button setImage:highlightedImage forState:UIControlStateHighlighted];
        }
    }
    button.frame = CGRectMake(0.0f, 0.0f, image.size.width, image.size.height);
    return button;
}

#pragma mark -

+ (UIButton *)zjButtonWithImage:(UIImage *)image {
    return [self zjButtonWithImage:image highlightedImage:nil isBackground:NO];
}

+ (UIButton *)zjButtonWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage {
    return [self zjButtonWithImage:image highlightedImage:highlightedImage isBackground:NO];
}

#pragma mark -

+ (UIButton *)zjButtonWithBackgroundImage:(UIImage *)image {
    return [self zjButtonWithImage:image highlightedImage:nil isBackground:YES];
}

+ (UIButton *)zjButtonWithBackgroundImage:(UIImage *)image highlightedBackgroundImage:(UIImage *)highlightedImage {
    return [self zjButtonWithImage:image highlightedImage:highlightedImage isBackground:YES];
}


@end

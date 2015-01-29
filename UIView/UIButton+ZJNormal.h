//
//  UIButton+ZJNormal.h
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
// 

#import <UIKit/UIKit.h>

@interface UIButton (ZJNormal)

+ (UIButton *)zjButtonWithImage:(UIImage *)image;
+ (UIButton *)zjButtonWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage;

+ (UIButton *)zjButtonWithBackgroundImage:(UIImage *)image;
+ (UIButton *)zjButtonWithBackgroundImage:(UIImage *)image highlightedBackgroundImage:(UIImage *)highlightedImage;

@end

//
//  UIImage+ZJColor.h
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
// 

#import <UIKit/UIKit.h>

@interface UIImage (ZJColor)

+(instancetype)imageWithColor:(UIColor *)color;
+(instancetype)imageWithColor:(UIColor *)color size:(CGSize)size;
+(instancetype)imageWithColor:(UIColor *)color rect:(CGRect)rect;

@end

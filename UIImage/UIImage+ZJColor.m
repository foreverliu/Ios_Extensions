//
//  UIImage+ZJColor.m
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
//  颜色转化为图片

#import "UIImage+ZJColor.h"

@implementation UIImage (ZJColor)

+(instancetype)imageWithColor:(UIColor *)color
{
   return [self imageWithColor:color size:CGSizeMake(1, 1)];
}
+(instancetype)imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0.0f, size.width, size.height);
    return [self imageWithColor:color rect:rect];
}

+(instancetype)imageWithColor:(UIColor *)color rect:(CGRect)rect
{
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *colorImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return colorImage;
}


@end

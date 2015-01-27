//
//  NSString+ZJSizeWithFont.h
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (ZJSizeWithFont)

- (CGSize)zjSizeWithFont:(UIFont *)font;

- (CGSize)zjSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size;
- (CGSize)zjSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode;

- (CGSize)zjSizeWithFont:(UIFont *)font forWidth:(CGFloat)width lineBreakMode:(NSLineBreakMode)lineBreakMode;


@end

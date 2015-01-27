//
//  NSString+ZJSizeWithFont.m
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
//

#import "NSString+ZJSizeWithFont.h"

@implementation NSString (ZJSizeWithFont)

- (CGSize)zjSizeWithFont:(UIFont *)font {
    CGSize outSize = [self sizeWithAttributes:[NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName]];
    return [self zjRoundedSize:outSize];
}

- (CGSize)zjSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size {
    return [self zjSizeWithFont:font constrainedToSize:size lineBreakMode:NSLineBreakByWordWrapping];
}

- (CGSize)zjSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode {
    CGSize outSize = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName] context:nil].size;
    return [self zjRoundedSize:outSize];
}

- (CGSize)zjSizeWithFont:(UIFont *)font forWidth:(CGFloat)width lineBreakMode:(NSLineBreakMode)lineBreakMode {
    return [self zjSizeWithFont:font constrainedToSize:CGSizeMake(width, CGFLOAT_MAX) lineBreakMode:lineBreakMode];
}

- (CGSize)zjRoundedSize:(CGSize)size {
    size.width = ceilf(size.width);
    size.height = ceilf(size.height);
    return size;
}

@end

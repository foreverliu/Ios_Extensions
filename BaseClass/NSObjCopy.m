//
//  NSObjCopy.m
//  Test
//
//  Created by Nick on 15-1-28.
//  Copyright (c) 2015年 onebyte. All rights reserved.
// 

#import "NSObjCopy.h"
#import "NSObject+ZJProperty.h"

@implementation NSObjCopy


-(id)copyWithZone:(NSZone *)zone
{
    NSObject *copyObj = [[self class] new];
    //待扩展
    for (NSString *key in [self zjGetPropertyAllKeys]) {
        [copyObj setValue:[self valueForKey:key] forKey:key];
    }
    return copyObj;
}

-(id)mutableCopyWithZone:(NSZone *)zone
{
    return [self copyWithZone:zone];
}
@end

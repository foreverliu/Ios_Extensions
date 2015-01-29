//
//  NSObject+ZJKeyValue.m
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
// 

#import "NSObject+ZJKeyValue.h"

NSString *const NSObjectZJKeyValueidObj = @"NSObjectZJKeyValueidObj";

@implementation NSObject (ZJKeyValue)


- (void)zjSetValue:(id)value forKey:(NSString *)key
{
    [self zjSetValue:value forKey:key associationPolicy:OBJC_ASSOCIATION_RETAIN_NONATOMIC];
}


- (void)zjSetValue:(id)value forKey:(NSString *)key associationPolicy:(objc_AssociationPolicy)associationPolicy
{
    if (nil != key) {
#if !__has_feature(objc_arc)
        objc_setAssociatedObject(self, key, value, associationPolicy);
#else
        objc_setAssociatedObject(self, (__bridge const void *)(key), value, associationPolicy);
#endif
    }
}


- (id)zjValueForKey:(NSString *)key
{
#if !__has_feature(objc_arc)
        return objc_getAssociatedObject(self, key);
#else
        return objc_getAssociatedObject(self, (__bridge const void *)(key));
#endif
}

-(void)setIdObj:(id)idObj
{
    [self zjSetValue:idObj forKey:NSObjectZJKeyValueidObj];
}

-(id)idObj
{
    return [self zjValueForKey:NSObjectZJKeyValueidObj];
}

@end

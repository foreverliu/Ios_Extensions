//
//  NSObject+Property.m
//  XMhouse
//
//  Created by Nick on 14-12-26.
//  Copyright (c) 2014年 onebyte. All rights reserved.
// 

#import "NSObject+ZJProperty.h"
#import <objc/runtime.h>


NSInteger const objectStringEncode = NSUTF8StringEncoding;

@implementation NSObject (Property)

-(NSArray *)zjGetPropertyAllKeys
{
    unsigned int outCount, i;

    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    NSMutableArray *propertyNames = [[NSMutableArray alloc] initWithCapacity:outCount];
    for (i = 0; i < outCount; i++)
    {
        objc_property_t property = properties[i];
        NSString *propertyNameString = [[NSString alloc] initWithCString:property_getName(property) encoding:objectStringEncode];
        
        [propertyNames addObject:propertyNameString];
    }
    return propertyNames;
}

-(NSString *)zjGetPropertyClassStringWithKey :(NSString *)key
{
    if (key == nil || [key isEqualToString:@""])
    {
        return nil;
    }
    
    objc_property_t property =  class_getProperty([self class],[key cStringUsingEncoding:NSUTF8StringEncoding]);
    if (property == (__bridge objc_property_t)([NSNull null])) {
        return nil;
    }
    const char * attrC = property_getAttributes(property);
    NSString *str = [[NSString alloc] initWithCString:attrC encoding:objectStringEncode];
    if (str.length == 0)
    {
        return nil;
    }
    
    NSRange range = [str rangeOfString:@","];
    str = [str substringWithRange:NSMakeRange(0, range.location)];

    NSRange isObjRang = [str rangeOfString:@"@\""];
    if (isObjRang.location != NSNotFound)
    {
        NSUInteger location = isObjRang.location + isObjRang.length;
       str = [str substringWithRange:NSMakeRange(location,(str.length - location) - 1)];
    }else{
        str = [str substringWithRange:NSMakeRange(1, str.length -1)];
    }
    
    return str;
}

@end

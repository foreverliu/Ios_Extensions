//
//  NSObject+ZJKeyValue.h
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (ZJKeyValue)

/**
 *  关联到默认的key
 */
@property (nonatomic, retain) id idObj;

/**
 *  设置一个oc对象关联到一个key 默认关联策略 OBJC_ASSOCIATION_RETAIN_NONATOMIC
 */
- (void)zjSetValue:(id)value forKey:(NSString *)key;

/**
 *  设置一个oc对象关联到一个key 使用自己的关联策略
 */
- (void)zjSetValue:(id)value forKey:(NSString *)key associationPolicy:(objc_AssociationPolicy)associationPolicy;

/**
 *  根据key取得对应的值
 */
- (id)zjValueForKey:(NSString *)key;

@end

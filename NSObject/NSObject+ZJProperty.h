//
//  NSObject+Property.h
//  XMhouse
//
//  Created by Nick on 14-12-26.
//  Copyright (c) 2014年 onebyte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ZJProperty)

/**
 *  获取对象的所有属性
 */
-(NSArray *) zjGetPropertyAllKeys;

/**
 *  获取对象的属性的类型,基本属性类型返回的
 */
-(NSString *)zjGetPropertyClassStringWithKey :(NSString *)key;

extern NSInteger const objectStringEncode;

@end

//
//  NSObject+Property.h
//  XMhouse
//
//  Created by Nick on 14-12-26.
//  Copyright (c) 2014年 xmhouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Property)

-(NSArray *) zj_GetPropertyAllKeys;
-(NSString *)zj_GetPropertyClassStringWithKey :(NSString *)key;

extern NSInteger const objectStringEncode;

@end

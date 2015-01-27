//
//  LLBaseCell.m
//  XMhouse
//
//  Created by Nick on 14-10-23.
//  Copyright (c) 2014年 onebyte. All rights reserved.
//

#import "ZJBaseCell.h"

@interface ZJBaseCell ()
@end

@implementation ZJBaseCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}


+(instancetype)cellWithTableView:(UITableView *)tableView;
{
    ZJBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self)];
    if (cell == nil) {
        cell  = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass(self)];
    }
        
    return cell;
}

+(CGFloat)cellHeigth
{
    return 50;
}

@end

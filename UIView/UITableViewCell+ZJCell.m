//
//  UITableViewCell+ZJCell.m
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
// 

#import "UITableViewCell+ZJCell.h"

@implementation UITableViewCell (ZJCell)


+(instancetype)zjCellWithTableView:(UITableView *)tableView;
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self)];
    if (cell == nil) {
        cell  = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass(self)];
    }
    
    return cell;
}

+(instancetype)zjCellWithTableView :(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self) forIndexPath:indexPath];
    if (cell == nil) {
        cell  = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass(self)];
    }
    
    return cell;
}


@end

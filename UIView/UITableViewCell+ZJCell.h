//
//  UITableViewCell+ZJCell.h
//  Test
//
//  Created by Nick on 15-1-27.
//  Copyright (c) 2015年 onebyte. All rights reserved.
// 

#import <UIKit/UIKit.h>

@interface UITableViewCell (ZJCell)

+(instancetype)zjCellWithTableView:(UITableView *)tableView;
+(instancetype)zjCellWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath;

@end

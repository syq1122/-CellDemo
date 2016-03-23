//
//  FanctoryCell.h
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class BaseCell;
@class BaseModel;
@interface FanctoryCell : NSObject
//创建cell
+ (BaseCell *)creatCellWithClassName:(NSString *)cellClassName registForTableView:(UITableView *)tableView cellModel:(BaseModel *)cellModel indexPath:(NSIndexPath *)indexPath;


@end

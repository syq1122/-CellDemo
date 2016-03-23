//
//  BaseCell.h
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseModel;
@interface BaseCell : UITableViewCell
//赋值，具体实现需要子类重新赋值
- (void)setValueWithModel:(BaseModel *)model;



@end

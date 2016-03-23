//
//  FanctoryCell.m
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import "FanctoryCell.h"
#import "BaseModel.h"
#import "BaseCell.h"

@implementation FanctoryCell
+ (BaseCell *)creatCellWithClassName:(NSString *)cellClassName registForTableView:(UITableView *)tableView cellModel:(BaseModel *)cellModel indexPath:(NSIndexPath *)indexPath{
    //因为用的注册，所以没有取出cell类型
//    Class classCell = NSClassFromString(cellClassName);
    //cellID定义的位cell Class name
    [tableView registerNib:[UINib nibWithNibName:cellClassName bundle:nil] forCellReuseIdentifier:cellClassName];
    //创建
    BaseCell *cell = [tableView dequeueReusableCellWithIdentifier:cellClassName forIndexPath:indexPath];
    //赋值
    [cell setValueWithModel:cellModel];
    
    return cell;
    
    
    
}

@end

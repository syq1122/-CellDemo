//
//  FistCell.m
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import "FistCell.h"
#import "FistModel.h"
@implementation FistCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//重写BaseCell方法赋值
- (void)setValueWithModel:(FistModel *)model{
//    FistModel *modelF = (FistModel *)model;
    self.imageV.backgroundColor = [UIColor redColor];
    self.contentLabel.text = model.title;
}


@end

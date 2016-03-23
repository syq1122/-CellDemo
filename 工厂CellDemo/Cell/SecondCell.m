//
//  SecondCell.m
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import "SecondCell.h"
//#import "BaseModel.h"
#import "SecondModel.h"
@implementation SecondCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//重写BaseCell方法赋值
- (void)setValueWithModel:(SecondModel *)model{
    self.photoV.backgroundColor = [UIColor yellowColor];
    self.titileLabel.text = model.title;
    self.contentLabel.text = model.contentL;
    
}

@end

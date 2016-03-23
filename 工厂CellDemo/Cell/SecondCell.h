//
//  SecondCell.h
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import "BaseCell.h"

@interface SecondCell : BaseCell
@property (weak, nonatomic) IBOutlet UIImageView *photoV;
@property (weak, nonatomic) IBOutlet UILabel *titileLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

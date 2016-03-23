//
//  FistModel.m
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import "FistModel.h"

@implementation FistModel


//重新父类实现
-(void)setValueWithDic:(NSDictionary *)dic{
    self.ifFirstModel = [dic[@"ifFirstModel"] boolValue];
    self.title = dic[@"title"];
    
}
@end

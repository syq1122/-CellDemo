//
//  BaseModel.m
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel


-(instancetype)initWithModelClassName:(NSString *)modelClassName modelDic:(NSDictionary *)dic{
    //获取传过来的model类型
    Class subModelClass = NSClassFromString(modelClassName);
    //根据类型会调用子类方法，
    BaseModel *model = [[subModelClass alloc] init];
    [model setValueWithDic:dic];
    return model;
    
}
//子类具体去实现
-(void)setValueWithDic:(NSDictionary *)dic{
    
}

////只让子类重新
//-(instancetype)initWithDic:(NSDictionary *)dic{
//    return nil;
//}


@end

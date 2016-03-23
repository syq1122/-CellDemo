//
//  BaseModel.h
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

@property (nonatomic, assign) BOOL ifFirstModel;
//父类方法
-(instancetype)initWithModelClassName:(NSString *)modelClassName modelDic:(NSDictionary *)dic;
@end

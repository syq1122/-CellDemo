//
//  ViewController.m
//  工厂CellDemo
//
//  Created by syq on 16/3/23.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//

#import "ViewController.h"
#import "FanctoryCell.h"
#import "BaseCell.h"
#import "BaseModel.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong)NSMutableArray *datas;

@end

@implementation ViewController
-(NSMutableArray *)datas{
    if (_datas == nil) {
        self.datas = [NSMutableArray array];
    }
    return _datas;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100;
    // Do any additional setup after loading the view, typically from a nib.
    NSString *fileStr = [[NSBundle mainBundle] pathForResource:@"ModelPlist" ofType:@"plist"];
    NSArray *arr = [NSArray arrayWithContentsOfFile:fileStr];
    [arr enumerateObjectsUsingBlock:^(NSDictionary * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        BaseModel *model = nil;
        //根据字典中存储bool值判断生产哪一种model
        if ([obj[@"ifFirstModel"] boolValue] == YES) {
            model = [[BaseModel alloc] initWithModelClassName:@"FistModel" modelDic:obj];
        }else{
            model = [[BaseModel alloc] initWithModelClassName:@"SecondModel" modelDic:obj];

        }
        [self.datas addObject:model];
    }];
    
}

#pragma mark -----table delegate 
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseModel *model = self.datas[indexPath.row];
    BaseCell *cell = nil;
    if (model.ifFirstModel == YES) {
    //创建第一种cell
        cell = [FanctoryCell creatCellWithClassName:@"FistCell" registForTableView:tableView cellModel:model indexPath:indexPath];

    }else{
        cell = [FanctoryCell creatCellWithClassName:@"SecondCell" registForTableView:tableView cellModel:model indexPath:indexPath];
    }
    return cell;
    
    
}




-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

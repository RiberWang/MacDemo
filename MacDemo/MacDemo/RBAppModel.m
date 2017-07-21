//
//  RBAppModel.m
//  MacDemo
//
//  Created by Riber on 2017/7/21.
//  Copyright © 2017年 Riber. All rights reserved.
//

#import "RBAppModel.h"

@implementation RBAppModel

+ (NSMutableArray *)getDataArray {
    NSMutableArray *tempArray = [NSMutableArray arrayWithCapacity:0];
    
    RBAppModel *model1 = [[RBAppModel alloc] init];
    model1.name = @"QQ";
    model1.appIcon = @"QQ";
    [tempArray addObject:model1];
    
    RBAppModel *model2 = [[RBAppModel alloc] init];
    model2.name = @"微信";
    model2.appIcon = @"WeChat";
    [tempArray addObject:model2];
    
    RBAppModel *model3 = [[RBAppModel alloc] init];
    model3.name = @"支付宝";
    model3.appIcon = @"Alipay";
    [tempArray addObject:model3];

    
    return tempArray;
}

@end

//
//  RBAppModel.h
//  MacDemo
//
//  Created by Riber on 2017/7/21.
//  Copyright © 2017年 Riber. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RBAppModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *appIcon;

+ (NSMutableArray *)getDataArray;

@end

//
//  YJAMapViewModel.m
//  YJMapKitExmaple
//
//  Created by EStrongerE023 on 2018/5/29.
//  Copyright © 2018年 EStrongerE023. All rights reserved.
//

#import "YJAMapViewModel.h"

@interface YJAMapViewModel ()

@property (nonatomic, weak, readwrite) YJAMapViewController *yj_aMapViewController;

@end

@implementation YJAMapViewModel

- (instancetype)initAMapViewModelWithController:(YJAMapViewController *)controller {
    
    if (self) {
        
        self.yj_aMapViewController = controller;
    }
    
    return self;
}

@end

//
//  YJAMapDelegate.m
//  YJMapKitExmaple
//
//  Created by EStrongerE023 on 2020/2/18.
//  Copyright © 2020年 EStrongerE023. All rights reserved.
//

#import "YJAMapDelegate.h"

@interface YJAMapDelegate ()

@property (nonatomic, weak, readwrite) YJAMapViewModel *yj_aMapViewModel;

@end

@implementation YJAMapDelegate

- (instancetype)initAMapDelegateWithViewModel:(YJAMapViewModel *)viewModel {
    
    self = [super init];
    
    if (self) {
        
        self.yj_aMapViewModel = viewModel;
    }
    
    return self;
}

@end

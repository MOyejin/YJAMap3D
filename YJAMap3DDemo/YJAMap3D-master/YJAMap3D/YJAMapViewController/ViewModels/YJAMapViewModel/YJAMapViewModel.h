//
//  YJAMapViewModel.h
//  YJMapKitExmaple
//
//  Created by EStrongerE023 on 2018/5/29.
//  Copyright © 2018年 EStrongerE023. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YJAMapViewController.h"

NS_ASSUME_NONNULL_BEGIN
@interface YJAMapViewModel : NSObject

/**
 只读的YJAMapViewController
 */
@property (nonatomic, weak, readonly) YJAMapViewController *yj_aMapViewController;

/**
 初始化YJAMapViewModel

 @param controller YJAMapViewController
 @return YJAMapViewModel
 */
- (instancetype)initAMapViewModelWithController:(YJAMapViewController *)controller;

@end
NS_ASSUME_NONNULL_END

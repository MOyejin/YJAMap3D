//
//  YJAMapDelegate.h
//  YJMapKitExmaple
//
//  Created by EStrongerE023 on 2020/2/18.
//  Copyright © 2020年 EStrongerE023. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MAMapKit/MAMapView.h>

#import "YJAMapViewModel.h"

NS_ASSUME_NONNULL_BEGIN
@interface YJAMapDelegate : NSObject <MAMapViewDelegate>

/**
 只读的YJAMapViewModel
 */
@property (nonatomic, weak, readonly) YJAMapViewModel *yj_aMapViewModel;

/**
 初始化YJAMapDelegate

 @param viewModel YJAMapViewModel
 @return YJAMapDelegate
 */
- (instancetype)initAMapDelegateWithViewModel:(YJAMapViewModel *)viewModel;

@end
NS_ASSUME_NONNULL_END

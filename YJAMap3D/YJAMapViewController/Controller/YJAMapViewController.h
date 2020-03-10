//
//  YJAMapViewController.h
//  YJMapKitExmaple
//
//  Created by EStrongerE023 on 2020/2/18.
//  Copyright © 2020年 EStrongerE023. All rights reserved.
//

#import <YJUIKit/YJUIKit.h>
#import <MAMapKit/MAMapView.h>

NS_ASSUME_NONNULL_BEGIN
@interface YJAMapViewController : YJViewController

/**
 只读的MAMapView
 */
@property (nonatomic, strong, readonly) MAMapView *yj_mapView;

/**
 设置MAMapView的MAMapViewDelegate

 @param delegate MAMapViewDelegate
 */
- (void)yj_setMapViewDelegate:(id<MAMapViewDelegate>)delegate;

@end
NS_ASSUME_NONNULL_END

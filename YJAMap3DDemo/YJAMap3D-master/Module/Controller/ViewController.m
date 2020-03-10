//
//  ViewController.m
//  YJAMap3D-master
//
//  Created by EStrongerE023 on 2020/3/9.
//  Copyright © 2020 EStrongerE023. All rights reserved.
//

#import "ViewController.h"
#import "YJMainAMapViewModel.h"
#import "YJMainAMapDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) YJMainAMapViewModel *yj_aMapViewModel;
@property (nonatomic, strong) YJMainAMapDelegate  *yj_aMapDelegate;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"高德3D地图";
    
    [self yj_setMapViewDelegate:self.yj_aMapDelegate];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self ex_addConstraintsWithSuperView];
}

- (YJMainAMapViewModel *)yj_aMapViewModel {
    
    YJ_GET_METHOD_RETURN_OBJC(_yj_aMapViewModel);
    
    _yj_aMapViewModel = [[YJMainAMapViewModel alloc] initAMapViewModelWithController:self];
    
    return _yj_aMapViewModel;
}

- (YJMainAMapDelegate *)yj_aMapDelegate {
    
    YJ_GET_METHOD_RETURN_OBJC(_yj_aMapDelegate);
    
    _yj_aMapDelegate = [[YJMainAMapDelegate alloc] initAMapDelegateWithViewModel:self.yj_aMapViewModel];
    
    return _yj_aMapDelegate;
}

- (void)ex_addConstraintsWithSuperView {
    
    self.yj_mapView.showsUserLocation = YES;
    self.yj_mapView.userTrackingMode  = MAUserTrackingModeFollow;
    
    [self.yj_mapView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (@available(iOS 11.0, *)) {
            
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
            make.left.equalTo(self.view.mas_safeAreaLayoutGuideLeft);
            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
            make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight);
        } else {
            
            (void)make.edges;
        }
    }];
}


@end

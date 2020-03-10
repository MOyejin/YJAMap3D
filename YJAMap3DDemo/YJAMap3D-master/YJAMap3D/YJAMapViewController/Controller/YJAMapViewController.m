//
//  YJAMapViewController.m
//  YJMapKitExmaple
//
//  Created by EStrongerE023 on 2020/2/18.
//  Copyright © 2020年 EStrongerE023. All rights reserved.
//

#import "YJAMapViewController.h"

@interface YJAMapViewController ()

@property (nonatomic, strong, readwrite) MAMapView *yj_mapView;

@end

@implementation YJAMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.yj_mapView];
}

- (void)yj_setMapViewDelegate:(id<MAMapViewDelegate>)delegate {
    
    self.yj_mapView.delegate = delegate;
}

- (MAMapView *)yj_mapView {
    
    if (!_yj_mapView) {
        
        _yj_mapView = [[MAMapView alloc] initWithFrame:self.view.frame];
    }
    
    return _yj_mapView;
}

@end

//
//  ViewController.m
//  DynamicButton
//
//  Created by boyancao on 16/3/17.
//  Copyright © 2016年 boyancao. All rights reserved.
//

#import "ViewController.h"
#import "DynamicButtonView.h"


@interface ViewController ()<DynamicButtonViewDataDelegate,DynamicButtonViewDataSource>

@property (nonatomic, strong) NSMutableArray * dataList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customView];
    self.dataList = [[NSMutableArray alloc]initWithObjects:@"nihao",@"buhao",@"henhao", nil];
}

- (void)customView{
    DynamicButtonView * view = [[DynamicButtonView alloc]initWithFrame:CGRectMake(100, 100, 0, 0)];
    view.delegate = self;
    view.datasource = self;
    [view configWithButtonArray:@[@"nihao",@"buhao",@"henhao"]];
    [self.view addSubview:view];
}

-(NSInteger)heightForRowsInDynamicView:(DynamicButtonView *)dynamicButtonView{
    return 100;
}

-(NSInteger)widthForRowInDynamicView:(DynamicButtonView *)dynmaicButtonView{
    return 200;
}

-(NSInteger)numberOfRowsInDynamicView:(DynamicButtonView *)dynamicButtonView{
    return self.dataList.count;
}


@end

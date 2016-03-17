//
//  DynamicButtonView.m
//  DynamicButton
//
//  Created by boyancao on 16/3/17.
//  Copyright © 2016年 boyancao. All rights reserved.
//

#import "DynamicButtonView.h"

#define defaultRowHeight 30
#define defaultRowWifth 100

@interface DynamicButtonView()

@property (nonatomic,strong) NSArray * dataList;

@end

@implementation DynamicButtonView

-(NSArray *)dataList{
    if (!_dataList) {
        _dataList = [[NSArray alloc]init];
    }
    return _dataList;
}

-(instancetype)init{
    self = [super init];
    if (self) {
        [self setUp];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setUp];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp{

    
}

- (void)configWithButtonArray:(NSArray *)array{
    NSInteger rowHeight = [self.datasource heightForRowsInDynamicView:self];
    NSInteger rowWidth = [self.datasource widthForRowInDynamicView:self];
    self.dataList = array;
    NSInteger left = 0;
    __block NSInteger top = 0;
    if (array.count>0) {
        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(left, top, rowWidth, rowHeight)];
            [button setTitle:[array objectAtIndex:idx] forState:UIControlStateNormal];
            button.tag  = idx;
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            button.layer.borderColor = [UIColor colorWithRed:0.933 green:0.933 blue:0.933 alpha:1.00].CGColor;
            button.layer.borderWidth = 1.0f;
            [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:button];
            top = top + rowHeight;
        }];
    }
    CGRect rect = self.frame;
    rect.size.width = rowWidth;
    rect.size.height = top;
    self.frame = rect;

}

- (void)clickButton:(UIButton *)sender{
    NSInteger * tag = sender.tag;
    NSLog(@"you click %@",[self.dataList objectAtIndex:tag]);

}


@end

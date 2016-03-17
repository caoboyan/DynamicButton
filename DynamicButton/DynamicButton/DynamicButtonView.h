//
//  DynamicButtonView.h
//  DynamicButton
//
//  Created by boyancao on 16/3/17.
//  Copyright © 2016年 boyancao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DynamicButtonView;

@protocol DynamicButtonViewDataSource <NSObject>

@required

- (NSInteger)numberOfRowsInDynamicView:(DynamicButtonView *)dynamicButtonView;

- (NSInteger)heightForRowsInDynamicView:(DynamicButtonView *)dynamicButtonView;

- (NSInteger)widthForRowInDynamicView:(DynamicButtonView *)dynmaicButtonView;

@end

@protocol DynamicButtonViewDataDelegate <NSObject>

@optional

- (void)DynamicButtomViewClick:(DynamicButtonView *)dynamicButtonView didSelectAtRow:(NSInteger)row;

@end

@interface DynamicButtonView : UIView

@property (nonatomic, weak) id<DynamicButtonViewDataSource> datasource;
@property (nonatomic, weak) id<DynamicButtonViewDataDelegate> delegate;

- (void)configWithButtonArray:(NSArray *)array;

@end

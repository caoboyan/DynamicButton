//
//  DynamicButtonView.h
//  DynamicButton
//
//  Created by boyancao on 16/3/17.
//  Copyright © 2016年 boyancao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DynamicButtonView;

@protocol DynamicButtonViewDelegate <NSObject>

@required

- (NSInteger) numberOfRowsInshopBottomMenuView:(DynamicButtonView *)dynamicMenuView;


@end

@interface DynamicButtonView : UIView

@end

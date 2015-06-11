//
//  LCCheckBox.h
//  LCCheckBox
//
//  Created by Ceres on 15/6/11.
//  Copyright (c) 2015年 www.duoc.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LCCheckBox : UIButton

@property (assign,nonatomic)  BOOL currentState;


- (instancetype)initWithFrame:(CGRect)frame yesImage:(UIImage *)yesImage noImage:(UIImage *)noImage;


@end

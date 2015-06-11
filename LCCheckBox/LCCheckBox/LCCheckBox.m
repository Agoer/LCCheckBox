//
//  LCCheckBox.m
//  LCCheckBox
//
//  Created by Ceres on 15/6/11.
//  Copyright (c) 2015年 www.duoc.cn. All rights reserved.
//

#import "LCCheckBox.h"

@interface LCCheckBox ()

@property (strong,nonatomic)  UIImage *yesImage;
@property (strong,nonatomic)  UIImage *noImage;
@end

@implementation LCCheckBox

- (instancetype)initWithFrame:(CGRect)frame yesImage:(UIImage *)yesImage noImage:(UIImage *)noImage
{
    if (self = [super initWithFrame:frame]) {
        
        _yesImage = yesImage;
        _noImage = noImage;
        self.currentState = YES;
        self.tag = 801;
        [self addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
       
    }

    _currentState = NO;
    
    return self;
    
}

- (void)setCurrentState:(BOOL)currentState
{
    _currentState = currentState;
    [self setImage:_currentState == YES?_yesImage:_noImage forState:UIControlStateNormal];
    self.tag = _currentState == YES?801:800;
}


- (void)buttonPressed:(UIButton *)sender
{
    if (self.tag == 801) {
        [self setImage:_noImage forState:UIControlStateNormal];
        self.tag = 800;
    } else if(self.tag == 800)
    {
        [self setImage:_yesImage forState:UIControlStateNormal];
        self.tag = 801;
    }
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

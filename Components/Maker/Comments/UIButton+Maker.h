//
//  UIButton+Maker.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIButton (Maker)
@property (nonatomic, copy) ButtonPressedBlock buttonPressedBlock;

@end

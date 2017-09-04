//
//  UITextField+Maker.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

static char *mk_private_maxLengthKey = "mk_private_maxLengthKey";

@interface UITextField (Maker) <UITextFieldDelegate>
@property (nonatomic, assign, readonly) MK_INTEGER private_maxLength;

@end


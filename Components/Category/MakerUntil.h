//
//  MakerUntil.h
//  Components
//
//  Created by ZhaoHeng on 2017/6/15.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define MK_FLOAT            CGFloat
#define MK_COLOR            id
#define MK_BOOL             BOOL
#define MK_STRING           NSString*
#define MK_CGRECT           CGRect
#define MK_UIVIEW           UIView*
#define MK_UIIMAGE          UIImage*
#define MK_TEXTALIGNMENT    NSTextAlignment
#define MK_LINEBREAKMODE    NSLineBreakMode
#define MK_CONTROLSTATE     UIControlState
#define MK_INTEGER          NSInteger

#define MK_RETURNNIL        return nil

// UIButton 按钮里的图片和文字的Insets
typedef NS_ENUM(NSUInteger, UIEdgeInsetsOption) {
    Image,
    Title
};

// Button点击事件
static char *buttonPressedKey = "buttonPressedKey";
typedef void(^ButtonPressedBlock)(UIButton *button);

@interface MakerUntil : NSObject
+ (UIColor *) colorWithHexString: (NSString *)color;

@end

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
#define MK_CONTROLSTATE     UIControlState
#define MK_INTEGER          NSInteger
#define MK_TIMEINTERVAL     NSTimeInterval

#define MK_RETURNNIL        return nil

// UIButton 按钮里的图片和文字的Insets
typedef NS_ENUM(NSUInteger, UIEdgeInsetsOption) {
    Image = 0,
    Title
};

// 重置NSLineBreakMode
typedef NS_ENUM(NSUInteger, LineBreakModeOption) {
    lWord = 0,
    lChar,
    lClip,
    lHead,
    lTail,
    lMiddle
};

// 重置NSTextAlignment
typedef NS_ENUM(NSUInteger, TextAlignmentOption) {
    lLeft = 0,
    lCenter,
    lRight,
    lJustified,
    lNatural
};

// 重置UIViewContentMode
typedef NS_ENUM(NSUInteger, ViewContentModeOption) {
    vToFill = 0,
    vAspectFit,
    vAspectFill,
    vRedraw,
    vCenter,
    vTop,
    vBottom,
    vLeft,
    vRight,
    vTopLeft,
    vTopRight,
    vBottomLeft,
    vBottomRight
};

// 重置UITextBorderStyle
typedef NS_ENUM(NSUInteger, TextBorderStyleOption) {
    tNone,
    tLine,
    tBezel,
    tRoundedRect
};

// 重置UIControlState
typedef NS_OPTIONS(NSUInteger, ControlStateOption) {
    bNormal = 0,
    bHighlighted = 1 << 0,
    bDisabled = 1 << 1,
    bSelected = 1 << 2,
    bFocused NS_ENUM_AVAILABLE_IOS(9_0) = 1 << 3,
    bApplication = 0x00FF0000,
    bReserved = 0xFF000000
};

// 重置UITextFieldViewMode
typedef NS_ENUM(NSInteger, TextFieldViewModeOption) {
    tNever,
    tWhileEditing,
    tUnlessEditing,
    tAlways
};

// 重置UIControlEvents
typedef NS_OPTIONS(NSUInteger, ControlEventsOption) {
    bTouchDown                                         = 1 <<  0,      // on all touch downs
    bTouchDownRepeat                                   = 1 <<  1,      // on multiple touchdowns (tap count > 1)
    bTouchDragInside                                   = 1 <<  2,
    bTouchDragOutside                                  = 1 <<  3,
    bTouchDragEnter                                    = 1 <<  4,
    bTouchDragExit                                     = 1 <<  5,
    bTouchUpInside                                     = 1 <<  6,
    bTouchUpOutside                                    = 1 <<  7,
    bTouchCancel                                       = 1 <<  8,
    bValueChanged                                      = 1 << 12,     // sliders, etc.
    bPrimaryActionTriggered NS_ENUM_AVAILABLE_IOS(9_0) = 1 << 13,     // semantic action: for buttons, etc.
    bEditingDidBegin                                   = 1 << 16,     // UITextField
    bEditingChanged                                    = 1 << 17,
    bEditingDidEnd                                     = 1 << 18,
    bEditingDidEndOnExit                               = 1 << 19,     // 'return key' ending editing
    bAllTouchEvents                                    = 0x00000FFF,  // for touch events
    bAllEditingEvents                                  = 0x000F0000,  // for UITextField
    bApplicationReserved                               = 0x0F000000,  // range available for application use
    bSystemReserved                                    = 0xF0000000,  // range reserved for internal framework use
    bAllEvents                                         = 0xFFFFFFFF
};

// 横向或竖向
typedef NS_ENUM(NSUInteger, LineViewDirection) {
    vHorizon,
    vVertical
};

// Button点击事件
static char *buttonPressedKey = "buttonPressedKey";
typedef void(^ButtonPressedBlock)(UIButton *button);

// ImageView图片Key
static char *imageNameKey = "imageNameKey";

@interface MakerUntil : NSObject
// 16进制颜色返回UIColor
+ (UIColor *) colorWithHexString: (NSString *)color;

// NSLineBreakMode
+ (NSLineBreakMode) lineBreakMode:(LineBreakModeOption)option;

// NSTextAlignment
+ (NSTextAlignment) textAlignment:(TextAlignmentOption)option;

// UIViewContentMode
+ (UIViewContentMode) viewContentMode:(ViewContentModeOption)option;

// UIControlState
+ (UIControlState) controlState:(ControlStateOption)option;

// UIControlEvents
+ (UIControlEvents) controlEvents:(ControlEventsOption)option;

// UITextBorderStyle
+ (UITextBorderStyle) textBorderStyle:(TextBorderStyleOption)option;

// UITextFieldViewMode
+ (UITextFieldViewMode) textFieldViewMode:(TextFieldViewModeOption)option;


@end

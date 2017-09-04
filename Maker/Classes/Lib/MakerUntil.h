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
#define MK_CGPOINT          CGPoint
#define MK_CGSize           CGSize

#define MK_RETURNNIL        return nil

// UIButton 按钮里的图片和文字的Insets
typedef NS_ENUM(NSUInteger, MKUIEdgeInsetsOption) {
    mk_Image = 0,
    mk_Title
};

// 重置NSLineBreakMode
typedef NS_ENUM(NSUInteger, MKLineBreakModeOption) {
    mk_Word = 0,
    mk_Char,
    mk_Clip,
    mk_Head,
    mk_Tail,
    mk_Middle
};

// 重置NSTextAlignment
typedef NS_ENUM(NSUInteger, MKTextAlignmentOption) {
    mk_Left = 0,
    mk_Center,
    mk_Right,
    mk_Justified,
    mk_Natural
};

// 重置UIViewContentMode
typedef NS_ENUM(NSUInteger, MKViewContentModeOption) {
    mk_vToFill = 0,
    mk_vAspectFit,
    mk_vAspectFill,
    mk_vRedraw,
    mk_vCenter,
    mk_vTop,
    mk_vBottom,
    mk_vLeft,
    mk_vRight,
    mk_vTopLeft,
    mk_vTopRight,
    mk_vBottomLeft,
    mk_vBottomRight
};

// 重置UITextBorderStyle
typedef NS_ENUM(NSUInteger, MKTextBorderStyleOption) {
    mk_None,
    mk_Line,
    mk_Bezel,
    mk_RoundedRect
};

// 重置UIControlState
typedef NS_OPTIONS(NSUInteger, MKControlStateOption) {
    mk_Normal = 0,
    mk_Highlighted = 1 << 0,
    mk_Disabled = 1 << 1,
    mk_Selected = 1 << 2,
    mk_Focused NS_ENUM_AVAILABLE_IOS(9_0) = 1 << 3,
    mk_Application = 0x00FF0000,
    mk_Reserved = 0xFF000000
};

// 重置UITextFieldViewMode
typedef NS_ENUM(NSInteger, MKTextFieldViewModeOption) {
    mk_Never,
    mk_WhileEditing,
    mk_UnlessEditing,
    mk_Always
};

// 重置UIControlEvents
typedef NS_OPTIONS(NSUInteger, MKControlEventsOption) {
    mk_TouchDown                                         = 1 <<  0,      // on all touch downs
    mk_TouchDownRepeat                                   = 1 <<  1,      // on multiple touchdowns (tap count > 1)
    mk_TouchDragInside                                   = 1 <<  2,
    mk_TouchDragOutside                                  = 1 <<  3,
    mk_TouchDragEnter                                    = 1 <<  4,
    mk_TouchDragExit                                     = 1 <<  5,
    mk_TouchUpInside                                     = 1 <<  6,
    mk_TouchUpOutside                                    = 1 <<  7,
    mk_TouchCancel                                       = 1 <<  8,
    mk_ValueChanged                                      = 1 << 12,     // sliders, etc.
    mk_PrimaryActionTriggered NS_ENUM_AVAILABLE_IOS(9_0) = 1 << 13,     // semantic action: for buttons, etc.
    mk_EditingDidBegin                                   = 1 << 16,     // UITextField
    mk_EditingChanged                                    = 1 << 17,
    mk_EditingDidEnd                                     = 1 << 18,
    mk_EditingDidEndOnExit                               = 1 << 19,     // 'return key' ending editing
    mk_AllTouchEvents                                    = 0x00000FFF,  // for touch events
    mk_AllEditingEvents                                  = 0x000F0000,  // for UITextField
    mk_ApplicationReserved                               = 0x0F000000,  // range available for application use
    mk_SystemReserved                                    = 0xF0000000,  // range reserved for internal framework use
    mk_AllEvents                                         = 0xFFFFFFFF
};

// 横向或竖向
typedef NS_ENUM(NSUInteger, MKLineViewDirection) {
    mk_Horizon,
    mk_Vertical
};

// UIScrollViewIndicatorStyle
typedef NS_ENUM(NSInteger, MKScrollViewIndicatorStyle) {
    mk_Default,
    mk_Black,
    mk_White
};

// 键盘消失的模式UIScrollViewKeyboardDismissMode
typedef NS_ENUM(NSInteger, MKScrollViewKeyboardDismissMode) {
    mk_DisNone,
    mk_DisOnDrag,      // dismisses the keyboard when a drag begins
    mk_DisInteractive, // the keyboard follows the dragging touch off screen, and may be pulled upward again to cancel the dismiss
} NS_ENUM_AVAILABLE_IOS(7_0);

// Button点击事件
static char *mk_buttonPressedKey = "mk_buttonPressedKey";
typedef void(^MKButtonPressedBlock)(UIButton *button);

// ImageView图片Key
static char *mk_imageNameKey = "mk_imageNameKey";

// UITextField事件
static char *mk_shouldReturnKey = "mk_shouldReturnKey";
typedef void(^MKShouldReturnBlock)();
static char *mk_textChangeKey = "mk_textChangeKey";
typedef void(^MKTextChangeBlock)(NSString *text);

@interface MakerUntil : NSObject
// 16进制颜色返回UIColor
+ (UIColor *) mk_colorWithHexString: (MK_STRING)color;

// NSLineBreakMode
+ (NSLineBreakMode) mk_lineBreakMode:(MKLineBreakModeOption)option;

// NSTextAlignment
+ (NSTextAlignment) mk_textAlignment:(MKTextAlignmentOption)option;

// UIViewContentMode
+ (UIViewContentMode) mk_viewContentMode:(MKViewContentModeOption)option;

// UIControlState
+ (UIControlState) mk_controlState:(MKControlStateOption)option;

// UIControlEvents
+ (UIControlEvents) mk_controlEvents:(MKControlEventsOption)option;

// UITextBorderStyle
+ (UITextBorderStyle) mk_textBorderStyle:(MKTextBorderStyleOption)option;

// UITextFieldViewMode
+ (UITextFieldViewMode) mk_textFieldViewMode:(MKTextFieldViewModeOption)option;

// UIScrollViewIndicatorStyle
+ (UIScrollViewIndicatorStyle) mk_scrollViewIndicatorStyle:(MKScrollViewIndicatorStyle)option;

// UIScrollViewIndicatorStyle
+ (UIScrollViewKeyboardDismissMode) mk_scrollViewKeyboardDismissModel:(MKScrollViewKeyboardDismissMode)option;

@end

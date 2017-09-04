//
//  MakerUntil.m
//  Components
//
//  Created by ZhaoHeng on 2017/6/15.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "MakerUntil.h"

@implementation MakerUntil

+ (UIColor *) mk_colorWithHexString: (MK_STRING)color {
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}
+ (NSLineBreakMode) mk_lineBreakMode:(MKLineBreakModeOption)option {
    return (NSLineBreakMode)option;
}
+ (NSTextAlignment) mk_textAlignment:(MKTextAlignmentOption)option {
    return (NSTextAlignment)option;
}
+ (UIViewContentMode) mk_viewContentMode:(MKViewContentModeOption)option {
    return (UIViewContentMode)option;
}
+ (UIControlState) mk_controlState:(MKControlStateOption)option {
    return (UIControlState)option;
}
+ (UIControlEvents) mk_controlEvents:(MKControlEventsOption)option {
    return (UIControlEvents)option;
}
+ (UITextBorderStyle) mk_textBorderStyle:(MKTextBorderStyleOption)option {
    return (UITextBorderStyle)option;
}
+ (UITextFieldViewMode) mk_textFieldViewMode:(MKTextFieldViewModeOption)option {
    return (UITextFieldViewMode)option;
}
+ (UIScrollViewIndicatorStyle) mk_scrollViewIndicatorStyle:(MKScrollViewIndicatorStyle)option {
    return (UIScrollViewIndicatorStyle)option;
}
+ (UIScrollViewKeyboardDismissMode) mk_scrollViewKeyboardDismissModel:(MKScrollViewKeyboardDismissMode)option {
    return (UIScrollViewKeyboardDismissMode)option;
}

@end

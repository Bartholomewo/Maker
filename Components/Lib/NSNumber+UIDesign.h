//
//  NSNumber+UIDesign.h
//
//  Created by ZhaoHeng on 16/8/31.
//  Copyright © 2016年 forkingghost. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define ppx(number) @(number).px
#define fft(number) @(number).ft

#define ppx3(number) @(number).px3
#define fft3(number) @(number).ft3

@interface NSNumber (UIDesign)

- (float) px; // 获取计算后获得的iOS设备上使用的像素大小
- (float) ft; // 获取计算后获得的iOS设备上使用的字体大小

- (float) px3;
- (float) ft3;

@end

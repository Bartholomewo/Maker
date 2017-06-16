//
//  NSNumber+UIDesign.m
//
//  Created by ZhaoHeng on 16/8/31.
//  Copyright © 2016年 forkingghost. All rights reserved.
//

#import "NSNumber+UIDesign.h"

@implementation NSNumber (UIDesign)

- (float) getDevicePxiel {
    float width = [UIScreen mainScreen].bounds.size.width;
    float ratio = 750.0f / width;
    return self.floatValue / ratio;
}

- (float) px {
    return [self getDevicePxiel];
}
- (float) ft {
    return [self getDevicePxiel];
}

- (float) getDevicePxiel3 {
    float width = [UIScreen mainScreen].bounds.size.width;
    float ratio = 375.0f / width;
    return self.floatValue / ratio;
}
- (float) px3 {
    return [self getDevicePxiel3];
}
- (float) ft3 {
    return [self getDevicePxiel3];
}


@end

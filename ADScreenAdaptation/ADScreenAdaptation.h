//
//  ADScreenAdaptation.h
//  ADScreenAdaptation
//
//  Created by andehang on 2017/11/30.
//  Copyright © 2017年 andehang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,ReferenceScreen)
{
    ReferenceScreeniPhone5s,
    ReferenceScreeniPhoneSE,
    ReferenceScreeniPhone6,
    ReferenceScreeniPhone6Plus,
    ReferenceScreeniPhone6s,
    ReferenceScreeniPhone6sPlus,
    ReferenceScreeniPhone7,
    ReferenceScreeniPhone7Plus,
    ReferenceScreeniPhone8,
    ReferenceScreeniPhoneX
};

#define adsaX(x) [[ADScreenAdaptation shareInstance] adsaX:(x)]
#define adsaY(y) [[ADScreenAdaptation shareInstance] adsaY:(y)]
#define adsaW(w) [[ADScreenAdaptation shareInstance] adsaW:(w)]
#define adsaH(h) [[ADScreenAdaptation shareInstance] adsaH:(h)]
#define adsaReferenceScreen(referenceScreen) [ADScreenAdaptation setReferenceScreen:(referenceScreen)]
#define adsaReference(w,h) [[ADScreenAdaptation shareInstance] setReference:(w) height:(h)]

@interface ADScreenAdaptation : NSObject

+ (instancetype)shareInstance;

/**
 水平位置换算
 @param x 换算前水平位置
 @return  换算后水平位置
 */
- (CGFloat)adsaX:(CGFloat)x;

/**
 垂直位置换算
 @param y 换算前垂直位置
 @return  换算后垂直位置
 */
- (CGFloat)adsaY:(CGFloat)y;

/**
 宽度换算
 @param w 换算前宽度
 @return  换算后宽度
 */
- (CGFloat)adsaW:(CGFloat)w;

/**
 高度换算
 @param h 换算前高度
 @return  换算后高度
 */
- (CGFloat)adsaH:(CGFloat)h;

/**
 设置效果图参考价值
 @param width 参考宽度
 @param height 参考高度
 */
- (void)setReference:(CGFloat)width height:(CGFloat)height;


/**
 设置效果图参考屏幕

 @param referenceScreen 参考屏幕
 */
+ (void)setReferenceScreen:(ReferenceScreen)referenceScreen;

@end

//
//  ADScreenAdaptation.m
//  ADScreenAdaptation
//
//  Created by andehang on 2017/11/30.
//  Copyright © 2017年 andehang. All rights reserved.
//

#import "ADScreenAdaptation.h"

#define kAdsaScreenWidth [UIScreen mainScreen].bounds.size.width
#define kAdsaScreenHeight [UIScreen mainScreen].bounds.size.height

static ADScreenAdaptation *_instance;

@interface ADScreenAdaptation()

/**(效果图)参考屏幕宽*/
@property (nonatomic, assign) CGFloat referenceWidth;

/**(效果图)参考屏幕高*/
@property (nonatomic, assign) CGFloat referenceHeight;

@end

@implementation ADScreenAdaptation

+ (instancetype)shareInstance
{
    if (_instance == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _instance = [[self alloc] init];
        });
    }
    return _instance;
}

- (instancetype)init
{
    if (self = [super init]) {
        self.referenceHeight = kAdsaScreenHeight;
        self.referenceWidth = kAdsaScreenWidth;
    }
    return self;
}

#pragma mark - 基础设置

- (void)setReference:(CGFloat)width height:(CGFloat)height
{
    self.referenceWidth = width;
    self.referenceHeight = height;
}

+ (void)setReferenceScreen:(ReferenceScreen)referenceScreen
{
    switch (referenceScreen) {
        case ReferenceScreeniPhone5s:
        case ReferenceScreeniPhoneSE:
        {
            adsaReference(320, 568);
        }
            break;
        case ReferenceScreeniPhone6:
        case ReferenceScreeniPhone6s:
        case ReferenceScreeniPhone7:
        case ReferenceScreeniPhone8:
        {
            adsaReference(375, 667);
        }
            break;
        case ReferenceScreeniPhone6Plus:
        case ReferenceScreeniPhone6sPlus:
        case ReferenceScreeniPhone7Plus:
        {
            adsaReference(414, 736);
        }
            break;
        case ReferenceScreeniPhoneX:
        {
            adsaReference(375, 812);
        }
            break;
            
        default:
            break;
    }
}

#pragma mark - 尺寸换算

- (CGFloat)adsaX:(CGFloat)x
{
    return (kAdsaScreenWidth / self.referenceWidth) * x;
}

- (CGFloat)adsaY:(CGFloat)y
{
    return (kAdsaScreenHeight / self.referenceHeight) * y;
}

- (CGFloat)adsaW:(CGFloat)w
{
    return (kAdsaScreenWidth / self.referenceWidth) * w;
}

- (CGFloat)adsaH:(CGFloat)h
{
    return (kAdsaScreenHeight / self.referenceHeight) * h;
}

@end

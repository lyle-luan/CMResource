//
//  CMResourceColor.m
//  CMResource
//
//  Created by Aaron on 10/29/14.
//  Copyright (c) 2014 Aaron. All rights reserved.
//

#import "CMResourceColor.h"

#define colorWithHexWithAlpha(hexValue, alphaValue) \
                        [UIColor colorWithRed:((float)((hexValue&0xFF0000)>>16))/255.0 green:((float)((hexValue&0xFF00)>>8))/255.0 blue:((float)(hexValue&0xFF))/255.0 alpha:alphaValue]

#define colorWithHex(hexValue) colorWithHexWithAlpha(hexValue, 1.0)

#define someColorWithAlpha(colorValue, alphaValue) do \
                { \
                    static UIColor *color = nil; \
                    if (color == nil) \
                    { \
                        color = colorWithHexWithAlpha(colorValue, alphaValue); \
                    } \
                    return color; \
                }\
                while(0);

#define someColor(colorValue) do \
                { \
                    static UIColor *color = nil; \
                    if (color == nil) \
                    { \
                        color = colorWithHex(colorValue); \
                    } \
                    return color; \
                }\
                while(0);

@implementation CMResourceColor

- (UIColor *)exampleColor
{
    someColor(0x2E84DD);
}

- (UIColor *)exampleColorWithAlpha:(CGFloat)alphaValue
{
    someColorWithAlpha(0x000000, alphaValue);
}

@end

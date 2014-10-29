//
//  CMResource.m
//  CMResource
//
//  Created by Aaron on 10/29/14.
//  Copyright (c) 2014 Aaron. All rights reserved.
//

#import "CMResource.h"

@implementation CMResource

+ (CMResourceFont *)font
{
    static CMResourceFont *cmResourceFont = nil;
    if (cmResourceFont == nil)
    {
        cmResourceFont = [[CMResourceFont alloc] init];
    }
    return cmResourceFont;
}

+ (CMResourceColor *)color
{
    static CMResourceColor *cmResourceColor = nil;
    if (cmResourceColor == nil)
    {
        cmResourceColor = [[CMResourceColor alloc] init];
    }
    return cmResourceColor;
}

+ (CMResourceImg *)img
{
    static CMResourceImg *cmResourceImg = nil;
    if (cmResourceImg == nil)
    {
        cmResourceImg = [[CMResourceImg alloc] init];
    }
    return cmResourceImg;
}

@end

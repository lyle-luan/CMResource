//
//  CMResourceFont.m
//  CMResource
//
//  Created by Aaron on 10/29/14.
//  Copyright (c) 2014 Aaron. All rights reserved.
//

#import "CMResourceFont.h"

NSString * const CM_FONT_NAME_LIGHT  = @"HelveticaNeue-Light";
NSString * const CM_FONT_NAME_MEDIUM = @"HelveticaNeue-Medium";
NSString * const CM_FONT_NAME_NORMAL = @"HelveticaNeue";

#define someFont(fontName, fontSize) do \
                    { \
                        static UIFont *font = nil; \
                        if (nil == font) \
                        { \
                            font = [UIFont fontWithName:fontName size:fontSize]; \
                        } \
                        return font; \
                    } \
                    while(0);


@implementation CMResourceFont

- (UIFont *)exampleFont
{
    someFont(CM_FONT_NAME_LIGHT, 33);
}

@end

//
//  CMResourceImg.m
//  CMResource
//
//  Created by Aaron on 10/29/14.
//  Copyright (c) 2014 Aaron. All rights reserved.
//

#import "CMResourceImg.h"

#define someImg(imgName) do \
                { \
                    UIImage *retainImg = nil; \
                    static __weak UIImage *weakImg = nil; \
                    if (weakImg == nil) \
                    { \
                        retainImg = [[UIImage alloc] initWithContentsOfFile:[NSString stringWithFormat:@"%@/%@.png", [[NSBundle mainBundle] resourcePath], imgName]]; \
                        weakImg = retainImg; \
                    } \
                    return weakImg; \
                } \
                while(0);

@implementation CMResourceImg

- (UIImage *)exampleImage
{
    someImg(@"ImageName");
}

@end

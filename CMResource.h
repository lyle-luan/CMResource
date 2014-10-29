//
//  CMResource.h
//  CMResource
//
//  Created by Aaron on 10/29/14.
//  Copyright (c) 2014 Aaron. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "CMResourceFont.h"
#import "CMResourceColor.h"
#import "CMResourceImg.h"

@interface CMResource : NSObject

+ (CMResourceFont *)font;
+ (CMResourceColor *)color;
+ (CMResourceImg *)img;

@end

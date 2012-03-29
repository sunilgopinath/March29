//
//  View.m
//  March29
//
//  Created by Sunil Gopinath on 3/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
 UIFont *font = [UIFont systemFontOfSize: 32.0];
 NSString *string = @"Hello, World!";
 CGPoint point = CGPointMake(0.0, 0.0);
 [string drawAtPoint: point withFont: font];
}


@end

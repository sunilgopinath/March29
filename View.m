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
    [@"Hello, World!"
     drawAtPoint: CGPointMake(50, 200)
     withFont: [UIFont systemFontOfSize: 32]
     ];
}


@end

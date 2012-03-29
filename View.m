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
        //Keep the size of the view the same,
		//but move the origin to the center of the view.
		CGFloat w = self.bounds.size.width;
		CGFloat h = self.bounds.size.height;
		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIFont *f = [UIFont systemFontOfSize: 32.0];
    NSString *s = @"هزا مدهش";
    UIDevice *device = [UIDevice currentDevice];	//There is only one object of this class.
    
	//NSString *string = device.model;		//Is it an iPhone, iPod, or iPad?
	//NSString *string = device.uniqueIdentifier;	//serial number
	//NSString *string = device.systemName;		//name of operating system, e.g. "iPhone OS"
	NSString *string = device.systemVersion;	//version number of operating system, e.g., "4.3"
    CGSize size = [string sizeWithFont: f];
    CGPoint point = CGPointMake(-size.width / 2, -size.height / 2);
    [string drawAtPoint: point withFont: f];
}


@end

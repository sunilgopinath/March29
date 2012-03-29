//
//  View.m
//  March29
//
//  Created by Sunil Gopinath on 3/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#define RED(color)	(((color) >> 2*8 & 0xFF) / 255.0)
#define GREEN(color)	(((color) >> 1*8 & 0xFF) / 255.0)
#define BLUE(color)	(((color) >> 0*8 & 0xFF) / 255.0)
@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        unsigned color = 0xFF00FF;	//purple
        self.backgroundColor = [UIColor colorWithRed: RED(color) green: GREEN(color) blue: BLUE(color) alpha: 1.0];
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
    UIFont *f = [UIFont  boldSystemFontOfSize: 32.0];
    NSString *s = @"هزا مدهش";
    UIDevice *device = [UIDevice currentDevice];	//There is only one object of this class.
    
	//NSString *string = device.model;		//Is it an iPhone, iPod, or iPad?
	//NSString *string = device.uniqueIdentifier;	//serial number
	//NSString *string = device.systemName;		//name of operating system, e.g. "iPhone OS"
	NSString *deviceVersion = device.systemVersion;	//version number of operating system, e.g., "4.3"
    
    NSURL *url = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];
    
	NSError *error;
	NSString *string = [[NSString alloc]
                        initWithContentsOfURL: url
                        encoding: NSUTF8StringEncoding
                        error: &error
                        ];
    
	if (string == nil) {
		string = [error localizedDescription];
	}
    
    CGSize size = [string sizeWithFont: f];
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0, .5, 1.0, 1.0);
    CGPoint point = CGPointMake(-size.width / 2, -size.height / 2);
    [string drawAtPoint: point withFont: f];
    
    //second line
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0, .5, .1, 1.0);
    CGPoint p = CGPointMake(0.0, 0.0);
    [deviceVersion drawAtPoint: p withFont: f];

}


@end

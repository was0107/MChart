//
//  CALayer+draw.m
//  MChart
//
//  Created by Micker on 16/4/18.
//  Copyright © 2016年 micker. All rights reserved.
//

#import "CALayer+draw.h"

@implementation CALayer (draw)

- (void) drawLineWithContext:(CGContextRef) context start:(CGPoint) start end:(CGPoint) end color:(UIColor *) color {
    assert(color);
    if (color) {
        const CGFloat *components = CGColorGetComponents(color.CGColor);
        CGContextSetRGBStrokeColor(context, components[0], components[1], components[2], components[3]);
    }
    CGContextSetLineWidth(context, 1);
    CGContextMoveToPoint(context, start.x, start.y);
    CGContextAddLineToPoint(context, end.x, end.y);
    CGContextDrawPath(context, kCGPathFillStroke);
}

- (void) drawTextWithContext:(CGContextRef) context text:(NSString *)text at:(CGPoint) point font:(UIFont *) font color:(UIColor *) color {
    assert(color && text);
    UIGraphicsPushContext(context);
    CGContextSetLineWidth(context, 0.);
    [text drawAtPoint:point withAttributes:@{NSFontAttributeName:font, NSForegroundColorAttributeName:color}];
    CGContextSetTextDrawingMode(context, kCGTextFillStroke);
    CGContextDrawPath(context, kCGPathFill);
    UIGraphicsPopContext();
}
@end

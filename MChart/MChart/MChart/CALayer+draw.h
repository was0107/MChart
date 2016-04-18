//
//  CALayer+draw.h
//  MChart
//
//  Created by Micker on 16/4/18.
//  Copyright © 2016年 micker. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface CALayer (draw)

- (void) drawLineWithContext:(CGContextRef) context start:(CGPoint) start end:(CGPoint) end color:(UIColor *) color;

- (void) drawTextWithContext:(CGContextRef) context text:(NSString *)text at:(CGPoint) point font:(UIFont *) font color:(UIColor *) color;

@end

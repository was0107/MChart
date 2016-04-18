//
//  MLineLayer.m
//  MChart
//
//  Created by Micker on 16/4/18.
//  Copyright © 2016年 micker. All rights reserved.
//

#import "MLineLayer.h"

static CGFloat padding = 24.;

@interface MLineModal()
@property (nonatomic, assign) CGPoint point;
@end

@implementation MLineModal

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y name:(NSString *)name
{
    self = [super init];
    if (self) {
        self.x = x;
        self.y = y;
        self.name = name;
    }
    return self;
}

@end


@implementation MLineLayer {
    CGFloat maxX, maxY;
    CGFloat minX, minY;
}

- (void) setDatas:(NSMutableArray *)datas {
    if (_datas != datas) {
        _datas = datas;
        
        if ([_datas count] > 0) {
            maxX = maxY = CGFLOAT_MIN;
            minX = minY = CGFLOAT_MAX;
            CGFloat _perWidth, _perHeight;
            [_datas enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                MLineModal *modal = (MLineModal *) obj;
                maxX = MAX(modal.x, maxX);
                maxY = MAX(modal.y, maxY);
                minX = MIN(modal.x, minX);
                minY = MIN(modal.y, minY);
            }];
            
            if (fabsf(maxX - minX) > 0) {
                _perWidth = (CGRectGetWidth(self.bounds) - 2 * padding)/ fabsf(maxX - minX);
            }
            if (fabsf(maxY - minY) > 0) {
                _perHeight = (CGRectGetHeight(self.bounds) - 2 * padding)/ fabsf(maxY - minY);
            }
            
            [_datas enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                MLineModal *modal = (MLineModal *) obj;
                modal.point = CGPointMake(floor(padding + (modal.x - minX) * _perWidth),  CGRectGetHeight(self.bounds)- floor(padding + (modal.y - minY) * _perHeight));
            }];
            
        }
        [self setNeedsDisplay];
    }
}


- (void) drawInContext:(CGContextRef)context {
    CGContextSetShouldAntialias(context, YES);
    for (NSUInteger i = 0 ,total = [_datas count]; i < total; i++) {
        MLineModal *start = _datas[i];
        if (i != total - 1) {
            MLineModal *end = _datas[i+1];
            [self drawLineWithContext:context
                                start:start.point
                                  end:end.point
                                color:[UIColor redColor]];
        }
    }
    for (NSUInteger i = 0 ,total = [_datas count]; i < total; i++) {
        MLineModal *start = _datas[i];
        [self drawTextWithContext:context text:start.name at:CGPointMake(start.point.x - 24, start.point.y) font:[UIFont systemFontOfSize:18.0f] color:[UIColor redColor]];
    }

}

@end

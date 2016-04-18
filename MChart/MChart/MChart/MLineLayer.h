//
//  MLineLayer.h
//  MChart
//
//  Created by Micker on 16/4/18.
//  Copyright © 2016年 micker. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CALayer+draw.h"

@interface MLineModal : NSObject
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, copy) NSString *name;

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y name:(NSString *)name;


@end

@interface MLineLayer : CALayer
@property (nonatomic, strong) NSMutableArray *datas;

@end

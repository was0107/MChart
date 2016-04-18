//
//  ViewController.m
//  testChart
//
//  Created by Micker on 16/4/16.
//  Copyright © 2016年 micker. All rights reserved.
//

#import "ViewController.h"
#import "MLineLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i = 0 ; i < 1; i++) {
        MLineLayer *layer = [MLineLayer layer];
        layer.backgroundColor = [[UIColor clearColor] CGColor];
        layer.frame = CGRectMake(i + 20, 64 + 15 * i, CGRectGetWidth(self.view.bounds) - 40 , CGRectGetHeight(self.view.bounds)- 64-15);
        layer.datas = [NSMutableArray arrayWithObjects:
                       
                       //x
//                       [[MLineModal alloc] initWithX:100 y:100 name:@"这"],
//                       [[MLineModal alloc] initWithX:120 y:100 name:@"是"],
//                       [[MLineModal alloc] initWithX:140 y:100 name:@"折"],
//                       [[MLineModal alloc] initWithX:160 y:100 name:@"线"],
//                       [[MLineModal alloc] initWithX:180 y:100 name:@"图"],
//                       [[MLineModal alloc] initWithX:200 y:100 name:@"示"],
//                       [[MLineModal alloc] initWithX:220 y:100 name:@"例"],
//                       
//                       //y
//                       [[MLineModal alloc] initWithX:100 y:100 name:@"这"],
//                       [[MLineModal alloc] initWithX:100 y:120 name:@"是"],
//                       [[MLineModal alloc] initWithX:100 y:140 name:@"折"],
//                       [[MLineModal alloc] initWithX:100 y:160 name:@"线"],
//                       [[MLineModal alloc] initWithX:100 y:180 name:@"图"],
//                       [[MLineModal alloc] initWithX:100 y:200 name:@"示"],
//                       [[MLineModal alloc] initWithX:100 y:220 name:@"例"],
                       
                       //折
                       [[MLineModal alloc] initWithX:100 y:110 name:@"这"],
                       [[MLineModal alloc] initWithX:120 y:100 name:@"是"],
                       [[MLineModal alloc] initWithX:140 y:130 name:@"折"],
                       [[MLineModal alloc] initWithX:160 y:90 name:@"线"],
                       [[MLineModal alloc] initWithX:180 y:140 name:@"图"],
                       [[MLineModal alloc] initWithX:200 y:150 name:@"示"],
                       [[MLineModal alloc] initWithX:220 y:120 name:@"例"],
                       nil];
        [self.view.layer addSublayer:layer];
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

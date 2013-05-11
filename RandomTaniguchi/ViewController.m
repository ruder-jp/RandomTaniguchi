//
//  ViewController.m
//  RandomTaniguchi
//
//  Created by Maeda Ryoto on 13/05/10.
//  Copyright (c) 2013年 Maeda Ryoto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StartButton:(id)sender {
    //回転
    self.TaniguchiPic.transform = CGAffineTransformMakeRotation(0);
    [UIView animateWithDuration:10
                     animations:^{
                         self.TaniguchiPic.transform =
                         CGAffineTransformMakeRotation(2*M_PI*180/360.0-0.000001);
                     }
     ];
    //ランダム変数
    int random_number;
    random_number = arc4random() % 6;
    //メンバーを格納する配列
    NSArray *jkar = [NSArray arrayWithObjects:@"谷口", @"西尾", @"宮城", @"深川", @"前田", @"Taniguchi", nil];
    self.LabelTaniguchi.text = jkar[random_number];
}
@end

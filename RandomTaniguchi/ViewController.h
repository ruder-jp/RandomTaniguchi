//
//  ViewController.h
//  RandomTaniguchi
//
//  Created by Maeda Ryoto on 13/05/10.
//  Copyright (c) 2013年 Maeda Ryoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//谷口君の画像
@property (weak, nonatomic) IBOutlet UIImageView *TaniguchiPic;
//結果表示のためのラベル
@property (weak, nonatomic) IBOutlet UILabel *LabelTaniguchi;

- (IBAction)StartButton:(id)sender;

@end

//
//  ViewController.m
//  OCComponent
//
//  Created by guohq on 2019/8/30.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [UILabel createView:^(VNPropertyManager * _Nonnull manager) {
        manager.vn_frame(50,200,200,40).vn_BKColor([UIColor orangeColor]).vn_title(@"888888").vn_textColor([UIColor redColor]).vn_font(28).vn_alignment(NSTextAlignmentCenter).vn_addView(self.view);
    }];
    NSLog(@"%@",label);
    
    UIButton *button = [UIButton createView:^(VNPropertyManager * _Nonnull manager) {
         manager.vn_frame(50,300,200,40).vn_BKColor([UIColor orangeColor]).vn_title(@"888888").vn_textColor([UIColor redColor]).vn_font(28).vn_alignment(UIControlContentHorizontalAlignmentLeft).vn_addView(self.view);
    }];
    NSLog(@"%@",button);
    
    UITextField *textField = [UITextField createView:^(VNPropertyManager * _Nonnull manager) {
         manager.vn_frame(50,400,200,40).vn_BKColor([UIColor greenColor]).vn_title(@"888888").vn_textColor([UIColor redColor]).vn_font(28).vn_alignment(NSTextAlignmentCenter).vn_addView(self.view);
    }];
    NSLog(@"%@",textField);

    
}


@end

//
//  ViewController.m
//  UIButton
//
//  Created by hx_leichunxiang on 14-10-24.
//  Copyright (c) 2014年 lcx. All rights reserved.
//  功能描述 ：UILabel、UIImageView作为UIButton的子视图，不影响父视图的触发事件范围。
//           UIButton作为父视图，作为子视图，能否影响UIButton触发事件的frame范围的状：
//           NO:  UILabel、UIImageView;
//           YES: UIView、UIButton.
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //父视图
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 60, 320, 60);
    [btn setTitle:@"父按钮" forState:UIControlStateNormal];
    [btn setTitle:@"点击了" forState:UIControlStateHighlighted];
    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn];
    
    //子视图
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
    label.text = @"UILabel";
    label.backgroundColor = [UIColor blueColor];
    [btn addSubview:label];
    
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(60, 0, 60, 30)];
    v.backgroundColor = [UIColor redColor];
    v.userInteractionEnabled = YES;
    [btn addSubview:v];
    UILabel *viewLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
    viewLabel.text = @"UIView";
    viewLabel.textColor = [UIColor blackColor];
    viewLabel.font = [UIFont systemFontOfSize:14];
    [v addSubview:viewLabel];

    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 30, 60, 30)];
    imgView.backgroundColor = [UIColor greenColor];
    [btn addSubview:imgView];
    UILabel *imgLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
    imgLabel.text = @"UIImageView";
    imgLabel.font = [UIFont systemFontOfSize:15];
    imgLabel.backgroundColor = [UIColor clearColor];
    [imgView addSubview:imgLabel];
    
    UIButton *subBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    subBtn.frame = CGRectMake(60, 30, 60, 30);
    [subBtn setTitle:@"子按钮" forState:UIControlStateNormal];
    [subBtn setTitle:@"点击了" forState:UIControlStateHighlighted];
    subBtn.backgroundColor = [UIColor purpleColor];
    [btn addSubview:subBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

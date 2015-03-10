//
//  ResizableViewController.m
//  UIButton
//
//  Created by hx_leichunxiang on 15-1-13.
//  Copyright (c) 2015年 lcx. All rights reserved.
//  描述：UIImage resizableImageWithCapInsets方法拉伸图片

#import "ResizableViewController.h"

@interface ResizableViewController ()

@end

@implementation ResizableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //父视图
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 100, [UIScreen mainScreen].applicationFrame.size.width-20, 60);
    [btn setTitle:@"父按钮" forState:UIControlStateNormal];
    [btn setTitle:@"点击了" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    UIEdgeInsets edgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
//    edgeInsets = UIEdgeInsetsZero;
    
    [btn setBackgroundImage:[[UIImage imageNamed:@"common_bt_normal@2x"] resizableImageWithCapInsets:edgeInsets resizingMode:UIImageResizingModeStretch] forState:UIControlStateNormal];
//    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

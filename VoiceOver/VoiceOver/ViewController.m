//
//  ViewController.m
//  VoiceOver
//
//  Created by 薛锦辉 on 2018/8/3.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "ViewController.h"
#import "ELEAccessibilityDemoViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"aa";
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"无障碍" forState:UIControlStateNormal];
    btn.frame  = CGRectMake(0, 0, 100, 40);
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
}


- (void)btnClick{
    
    ELEAccessibilityDemoViewController * demo = [[ELEAccessibilityDemoViewController alloc]init];
    [self.navigationController pushViewController:demo animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

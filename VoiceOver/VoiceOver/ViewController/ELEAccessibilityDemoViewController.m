//
//  ELEAccessibilityDemoViewController.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilityDemoViewController.h"

#import "ELEAccessibilitySysDemoViewController.h"

#import "ELEAccessibilityCustomDemoViewController.h"

#import "ELEAccessibilityCustom1DemoViewController.h"

#import "ELEAccessibilityOtherDemoViewController.h"

#import "ELEAccessibilityCustom2DemoViewController.h"

#import "FatherAndSunView.h"

@interface ELEAccessibilityDemoViewController ()

@end

@implementation ELEAccessibilityDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"无障碍解决方案演示";
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"系统控件" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 60, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(sysBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"自定义" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 100, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(cusBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"库" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 140, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(cus1BtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"其它" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 180, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(otherBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"宏" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 220, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(preBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    FatherAndSunView * view = [[FatherAndSunView alloc]initWithFrame:CGRectMake(30, 270, 100, 30)];
    [self.view addSubview:view];
}


- (void)sysBtnClick{
    
    ELEAccessibilitySysDemoViewController * sys = [[ELEAccessibilitySysDemoViewController alloc]init];
    [self.navigationController pushViewController:sys animated:YES];
}


- (void)cusBtnClick{
    
    ELEAccessibilityCustomDemoViewController * cus = [[ELEAccessibilityCustomDemoViewController alloc]init];
    [self.navigationController pushViewController:cus animated:YES];
}


- (void)cus1BtnClick{
    
    ELEAccessibilityCustom1DemoViewController * cus = [[ELEAccessibilityCustom1DemoViewController alloc]init];
    [self.navigationController pushViewController:cus animated:YES];
    
}

- (void)preBtnClick{
    
    ELEAccessibilityCustom2DemoViewController * cus = [[ELEAccessibilityCustom2DemoViewController alloc]init];
    [self.navigationController pushViewController:cus animated:YES];
}

- (void)otherBtnClick{
    
    ELEAccessibilityOtherDemoViewController * demo = [[ELEAccessibilityOtherDemoViewController alloc]init];
    [self.navigationController pushViewController:demo animated:YES];
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

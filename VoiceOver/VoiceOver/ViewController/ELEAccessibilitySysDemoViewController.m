//
//  ELEAccessibilitySysDemoViewController.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilitySysDemoViewController.h"

@interface ELEAccessibilitySysDemoViewController ()

@end

@implementation ELEAccessibilitySysDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //带文字的button
    //直接读出“文字-按钮”
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"文字" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 60, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    //有图片无文字的button，需要手动增加文字，比如增加"返回"
    //读出"返回-按钮"
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    NSString *str = @"elearning_sort_icon_down";
    [btn setBackgroundImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 100, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn setAccessibilityLabel:@"返回"];
    [self.view addSubview:btn];
    
    //图片
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 140, 100, 30)];
    imageView.image = [UIImage imageNamed:str];
    imageView.isAccessibilityElement = YES;
    imageView.accessibilityLabel = @"图片";
    [self.view addSubview:imageView];
    
    //uislider
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(0, 200,320 , 20)];
    [self.view addSubview:slider];
    
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

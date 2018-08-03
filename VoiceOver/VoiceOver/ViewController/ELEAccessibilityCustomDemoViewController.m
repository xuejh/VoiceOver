//
//  ELEAccessibilityCustomDemoViewController.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilityCustomDemoViewController.h"
#import "ELEAccessibilityCustomView.h"
#import "ELEAccessibilityAMutiView.h"

#import "ELEAccessibilityMultiView.h"

#import "ELEAccessibilityCustom1View.h"

@interface ELEAccessibilityCustomDemoViewController ()

@end

@implementation ELEAccessibilityCustomDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ELEAccessibilityCustomView * view = [[ELEAccessibilityCustomView alloc]init];
    view.frame = CGRectMake(30, 0, 100, 30);
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    ELEAccessibilityCustom1View * view3 = [[ELEAccessibilityCustom1View alloc]init];
    view3.isAccessibilityElement = YES;
    view3.accessibilityLabel = @"自定义View";
    view3.frame = CGRectMake(30, 40, 100, 30);
    view3.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view3];
    
    
    ELEAccessibilityAMutiView * view1 = [[ELEAccessibilityAMutiView alloc]init];
    view1.frame = CGRectMake(30,140 , 200, 100);
    [self.view addSubview:view1];
    
    ELEAccessibilityMultiView * view2 = [[ELEAccessibilityMultiView alloc]init];
    view2.frame = CGRectMake(30,360 , 200, 300);
    [self.view addSubview:view2];
    
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

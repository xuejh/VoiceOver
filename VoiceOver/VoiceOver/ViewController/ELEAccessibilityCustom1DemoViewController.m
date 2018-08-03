//
//  ELEAccessibilityCustom1DemoViewController.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilityCustom1DemoViewController.h"

#import "ELEAccessibilityAMuti1View.h"

#import "ELEAccessibilityMulti1View.h"

@interface ELEAccessibilityCustom1DemoViewController ()

@end

@implementation ELEAccessibilityCustom1DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ELEAccessibilityAMuti1View * view1 = [[ELEAccessibilityAMuti1View alloc]init];
    view1.frame = CGRectMake(30,40 , 200, 100);
    [self.view addSubview:view1];
    
    
    ELEAccessibilityMulti1View * view2 = [[ELEAccessibilityMulti1View alloc]init];
    view2.frame = CGRectMake(30,160 , 200, 300);
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

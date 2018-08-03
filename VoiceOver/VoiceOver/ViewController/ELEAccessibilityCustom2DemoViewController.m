//
//  ELEAccessibilityCustom2DemoViewController.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/3.
//

#import "ELEAccessibilityCustom2DemoViewController.h"
#import "ELEAccessibilityMulti2View.h"

@interface ELEAccessibilityCustom2DemoViewController ()

@end

@implementation ELEAccessibilityCustom2DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ELEAccessibilityMulti2View * view2 = [[ELEAccessibilityMulti2View alloc]init];
    view2.frame = CGRectMake(30,20 , 200, 300);
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

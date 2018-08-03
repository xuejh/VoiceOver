//
//  ELEAccessibilityOtherDemoViewController.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilityOtherDemoViewController.h"

#import "ELEAccessibilityManage.h"

@interface ELEAccessibilityOtherDemoViewController ()<UISearchBarDelegate>
@property (nonatomic,strong)UILabel * mlabel;

@end

@implementation ELEAccessibilityOtherDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"直接读出" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 0, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(readBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(30, 100, 100, 30)];
    label.text = @"dfdl 我";
    [self.view addSubview:label];
    self.mlabel = label;
    
    
    UISearchBar * bar = [[UISearchBar alloc]initWithFrame:CGRectMake(30, 350, 200, 30)];
    bar.placeholder = @"搜索";
    [self.view addSubview:bar];
    bar.delegate = self;
    
    
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


- (void)readBtnClick{
    [ELEAccessibilityManage read:@"直接读出一句话1111111111"];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    
    [searchBar resignFirstResponder];
    
    //设置元素焦点
    [ELEAccessibilityManage localPoint:self.mlabel];
}

@end

//
//  ELEAccessibilityMulti2View.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/3.
//

#import "ELEAccessibilityMulti2View.h"

#import "ELEAccessibilityAMuti2View.h"
#import "ELEAccessibilityManage.h"

@interface ELEAccessibilityMulti2View()
{
    NSMutableArray * _AccessElements;
    UISlider *slider;
    UILabel * label;
    ELEAccessibilityAMuti2View * view;
}
@property (nonatomic,strong)ELEAccessibilityManage * manage;
@end

@implementation ELEAccessibilityMulti2View

- (id)init{
    if (self = [super init]) {
        
        label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        label.text = @"自定义label";
        [self addSubview:label];
        
        slider = [[UISlider alloc]initWithFrame:CGRectMake(0, 50,200 , 20)];
        [self addSubview:slider];
        
        view =[[ELEAccessibilityAMuti2View alloc]init];
        view.frame = CGRectMake(30,240 , 200, 100);
        [self addSubview:view];
        
        self.manage = [[ELEAccessibilityManage alloc]init];
        self.manage.array = @[label,slider,view];
    }
    return self;
}


ELE_GEN_ACCESS_FUC(self.manage)

@end

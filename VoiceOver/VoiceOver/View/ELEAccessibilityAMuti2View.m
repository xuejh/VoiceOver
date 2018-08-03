//
//  ELEAccessibilityAMuti2View.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/3.
//

#import "ELEAccessibilityAMuti2View.h"
#import "ELEAccessibilityManage.h"


@interface ELEAccessibilityAMuti2View()
{
    NSMutableArray * _AccessElements;
    UISlider *slider;
    UILabel * label;
}

@property (nonatomic,strong)ELEAccessibilityManage * manage;
@end

@implementation ELEAccessibilityAMuti2View

- (id)init{
    if (self = [super init]) {
        
        label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        label.text = @"自定义3";
        [self addSubview:label];
        
        slider = [[UISlider alloc]initWithFrame:CGRectMake(0, 50,200 , 20)];
        [self addSubview:slider];
        
        self.manage = [[ELEAccessibilityManage alloc]init];
        self.manage.array = @[label,slider];
        
    }
    return self;
}

ELE_GEN_ACCESS_FUC(self.manage)

@end

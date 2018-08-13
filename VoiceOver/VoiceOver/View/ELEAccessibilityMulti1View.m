//
//  ELEAccessibilityMulti1View.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilityMulti1View.h"
#import "ELEAccessibilityAMuti1View.h"
#import "ELEAccessibilityManage.h"

@interface ELEAccessibilityMulti1View()
{
    NSMutableArray * _AccessElements;
    UISlider *slider;
    UILabel * label;
    ELEAccessibilityAMuti1View * view;
}
@property (nonatomic,strong)ELEAccessibilityManage * manage;
@end

@implementation ELEAccessibilityMulti1View

- (id)init{
    if (self = [super init]) {
        
        label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        label.text = @"自定义label";
        [self addSubview:label];
        
        slider = [[UISlider alloc]initWithFrame:CGRectMake(0, 50,200 , 20)];
        [self addSubview:slider];
        
        view =[[ELEAccessibilityAMuti1View alloc]init];
        view.frame = CGRectMake(30,240 , 200, 100);
        [self addSubview:view];
        
//        self.manage = [[ELEAccessibilityManage alloc]init];
//        self.manage.array = @[label,slider,view];
    }
    return self;
}


//-(BOOL)isAccessibilityElement
//{
//    return [self.manage isAccessibilityElement];
//}
//
//
//
//- (NSInteger)accessibilityElementCount
//{
//    return [self.manage accessibilityElementCount];
//}
//
//- (id)accessibilityElementAtIndex:(NSInteger)index
//{
//    return [self.manage accessibilityElementAtIndex:index];
//}

@end

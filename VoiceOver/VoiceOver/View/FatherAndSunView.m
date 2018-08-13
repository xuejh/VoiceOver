//
//  FatherAndSunView.m
//  VoiceOver
//
//  Created by 薛锦辉 on 2018/8/13.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "FatherAndSunView.h"
#import "ELEAccessibilityManage.h"

@interface FatherAndSunView()
{
    UIButton * fatherBtn;
    UIButton * sunBtn;
}

@property (nonatomic,strong)ELEAccessibilityManage * manage;

@end


@implementation FatherAndSunView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        fatherBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [fatherBtn setTitle:@"父" forState:UIControlStateNormal];
        [fatherBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [self addSubview:fatherBtn];
        
        sunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [sunBtn setTitle:@"子" forState:UIControlStateNormal];
        [sunBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [fatherBtn addSubview:sunBtn];
        
        fatherBtn.frame = CGRectMake(0, 0, 100, 30);
        sunBtn.frame = CGRectMake(0, 0, 30, 30);
        
        self.manage = [[ELEAccessibilityManage alloc]init];
        self.manage.array = @[fatherBtn,sunBtn];
    }
    return self;
}


-(BOOL)isAccessibilityElement
{
    return [self.manage isAccessibilityElement];
}



- (NSInteger)accessibilityElementCount
{
    return [self.manage accessibilityElementCount];
}

- (id)accessibilityElementAtIndex:(NSInteger)index
{
    return [self.manage accessibilityElementAtIndex:index];
}

@end

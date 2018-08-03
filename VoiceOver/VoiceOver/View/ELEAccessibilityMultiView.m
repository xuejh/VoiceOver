//
//  ELEAccessibilityMultiView.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilityMultiView.h"
#import "ELEAccessibilityAMutiView.h"

@interface ELEAccessibilityMultiView()
{
    NSMutableArray * _AccessElements;
    UISlider *slider;
    UILabel * label;
    ELEAccessibilityAMutiView * view;
}
@end


@implementation ELEAccessibilityMultiView

- (id)init{
    if (self = [super init]) {
        
        label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        label.text = @"自定义label";
        [self addSubview:label];
        
        slider = [[UISlider alloc]initWithFrame:CGRectMake(0, 50,200 , 20)];
        [self addSubview:slider];
        
        view =[[ELEAccessibilityAMutiView alloc]init];
        view.frame = CGRectMake(30,240 , 200, 100);
        [self addSubview:view];
    }
    return self;
}


-(BOOL)isAccessibilityElement
{
    return NO;
}

-(NSArray*)getAccessElement
{
    if(_AccessElements)
    {
        return _AccessElements;
    }
    
    _AccessElements = [[NSMutableArray alloc] init];
    
    
    
    
    [_AccessElements addObject:label];
    
    //也可以这么写
//    UIAccessibilityElement *element = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self] ;
//    element.isAccessibilityElement = YES;
//
//    CGRect frame = CGRectMake(0, 0, 50, 50);
//    element.accessibilityFrame = [self convertRect:frame toView:nil];// 转换为屏幕坐标
//    element.accessibilityLabel = @"自定义label";
//    [element setAccessibilityTraits:UIAccessibilityTraitNone];
//    [_AccessElements addObject:element];
    
    
    
//    element = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self] ;
//    element.isAccessibilityElement = YES;
//
//    frame = CGRectMake(0, 50, 200, 20);
//    element.accessibilityFrame = [self convertRect:frame toView:nil];// 转换为屏幕坐标
//    [element setAccessibilityTraits:UIAccessibilityTraitAdjustable];
    [_AccessElements addObject:slider];
    
    [_AccessElements addObject:view];
    
    
    
    return _AccessElements;
}

- (NSInteger)accessibilityElementCount
{
    return [self getAccessElement].count;
}

- (id)accessibilityElementAtIndex:(NSInteger)index
{
    return [[self getAccessElement] objectAtIndex:index];
}

@end

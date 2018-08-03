//
//  ELEAccessibilityCustomView.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilityCustomView.h"

@implementation ELEAccessibilityCustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype) init{
    
    self = [super init];
    if (self) {
        self.isAccessibilityElement = YES;
        self.accessibilityLabel = @"自定义View";
    }
    return self;
}

@end

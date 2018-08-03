//
//  ELEAccessibilityManage.m
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import "ELEAccessibilityManage.h"

@implementation ELEAccessibilityManage


-(BOOL)isAccessibilityElement{
    
    return NO;
}


- (NSInteger)accessibilityElementCount{
    
    return  self.array.count;
}
- (id)accessibilityElementAtIndex:(NSInteger)index{
    
    return [self.array objectAtIndex:index];
}

//不加延迟无声音

+ (void)read:(NSString*)str{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, str);
    });
    
    
}


+ (void)localPoint:(__nullable id)argument{
    
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, argument);
}
@end

//
//  ELEAccessibilityManage.h
//  elearning_sdp_base
//
//  Created by 薛锦辉 on 2018/8/2.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



//本来想写一个库，简化调用，后来发现没有此库也运行良好，故如果满足需求的话，不建议使用此库。
//增加宏代码减少代码编写
#undef    ELE_GEN_ACCESS_FUC
#define    ELE_GEN_ACCESS_FUC( __objcName) \
-(BOOL)isAccessibilityElement \
{ \
    return [__objcName isAccessibilityElement]; \
} \
- (NSInteger)accessibilityElementCount \
{ \
    return [__objcName accessibilityElementCount]; \
} \
- (id)accessibilityElementAtIndex:(NSInteger)index \
{ \
    return [__objcName accessibilityElementAtIndex:index]; \
} \



@protocol ELEAccessibilityManageProtocol <NSObject>

@required
-(BOOL)isAccessibilityElement;
- (NSInteger)accessibilityElementCount;
- (id)accessibilityElementAtIndex:(NSInteger)index;

@end

@interface ELEAccessibilityManage : NSObject<ELEAccessibilityManageProtocol>

@property (nonatomic,strong)NSArray * array;
-(BOOL)isAccessibilityElement;
- (NSInteger)accessibilityElementCount;
- (id)accessibilityElementAtIndex:(NSInteger)index;

//直接读出一句话
+ (void)read:(NSString*)str;

//设置元素焦点
+ (void)localPoint:(__nullable id)argument;
@end

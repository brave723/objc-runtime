//
//  BYPerson+BYTest.m
//  debug-objc
//
//  Created by xingyong06993 on 2020/4/2.
//

#import "BYPerson+BYTest.h"

@implementation BYPerson (BYTest)
+ (void)load{
    NSLog(@"分类BYTest ： %@_%@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}
@end

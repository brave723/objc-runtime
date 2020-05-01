//
//  BYPerson+BY.m
//  debug-objc
//
//  Created by xingyong06993 on 2020/4/2.
//

#import "BYPerson+BY.h"

@implementation BYPerson (BY)
+ (void)load{
    NSLog(@"分类BY ： %@_%@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}
@end

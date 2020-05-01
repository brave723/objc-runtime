//
//  BYPerson.m
//  debug-objc
//
//  Created by xingyong06993 on 2020/4/2.
//

#import "BYPerson.h"

@implementation BYPerson
+ (void)load{
    NSLog(@"%@_%@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}
- (void)say{
    NSLog(@"hi %@",NSStringFromSelector(_cmd));
}
@end

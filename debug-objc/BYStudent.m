//
//  BYStudent.m
//  debug-objc
//
//  Created by xingyong06993 on 2020/4/2.
//

#import "BYStudent.h"

@implementation BYStudent
+ (void)load{
    NSLog(@"%@_%@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}
@end

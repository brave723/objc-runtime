//
//  main.m
//  debug-objc
//
//  Created by Closure on 2018/12/4.
//

#import <Foundation/Foundation.h>
#import "BYPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BYPerson *person = [[BYPerson alloc] init];
        [person say];
    }
    return 0;
}

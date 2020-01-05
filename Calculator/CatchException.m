//
//  CatchException.m
//  Calculator
//
//  Created by Tsen on 2020/1/5.
//  Copyright © 2020 Tsen. All rights reserved.
//

#import "CatchException.h"

@implementation CatchException

+ (BOOL)catchException:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error {
    @try {
        tryBlock();
        return YES;
    }
    @catch (NSException *exception) {
        *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:exception.userInfo];
        return NO;
    }
}

@end

//
//  CatchException.h
//  Calculator
//
//  Created by Tsen on 2020/1/5.
//  Copyright © 2020 Tsen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CatchException : NSObject

+ (BOOL)catchException:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error;

@end

NS_ASSUME_NONNULL_END

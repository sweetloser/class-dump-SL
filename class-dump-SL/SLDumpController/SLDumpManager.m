//
//  SLDumpManager.m
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/7.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import "SLDumpManager.h"

@implementation SLDumpManager

- (BOOL)dump {
    if (self.argumentsModel.argc == 1) {
        [self.usageManager printAllUsage];
        return NO;
    }
    return YES;
}

@end

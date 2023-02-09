//
//  SLUsageManager.m
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/7.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import "SLUsageManager.h"
#import "SLContants.h"

@implementation SLUsageManager

- (void)printAllUsage {
    fprintf(stderr, "class-dump-sl %s\n"
            "Usage: class-dump [参数列表] <mach-o文件>\n",_kClassDumpBaseVersion);
}

@end

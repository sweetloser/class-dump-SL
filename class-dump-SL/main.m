//
//  main.m
//  class-dump-SL
//
//  Created by SL on 2018/1/29.
//  Copyright © 2018年 SweetLoser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLDumpManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个dump manager
        SLDumpManager *dumpM = [[SLDumpManager alloc] init];
        // 设置参数
        SLArgumentsModel *argumentsModel = [[SLArgumentsModel alloc] initWithArgc:argc andArgs:(char * _Nonnull const *_Nonnull)argv];
        dumpM.argumentsModel = argumentsModel;
        dumpM.usageManager = [[SLUsageManager alloc] init];
        dumpM.file = [SLFile fileWithContentsOfFile:argumentsModel.executablePath];
        [dumpM dump];
    }
    return 0;
}

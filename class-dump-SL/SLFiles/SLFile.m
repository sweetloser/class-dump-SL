//
//  SLFile.m
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/9.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import "SLFile.h"
#import "SLFatFile.h"
#import "SLMachOFile.h"

@interface SLFile()

@property(nonatomic,copy,readwrite)NSString *fileName;
@property(nonatomic,copy,readwrite)NSData *data;

@end

@implementation SLFile

/// 工厂模式创建file对象
+ (id)fileWithContentsOfFile:(NSString *)fileName {
    NSData *_data = [NSData dataWithContentsOfFile:fileName options:NSDataReadingMappedIfSafe | NSDataReadingMappedAlways error:nil];
    SLFatFile *fatFile = [[SLFatFile alloc] initWithData:_data fileName:fileName];
    if (fatFile) {
        return fatFile;
    }
    SLMachOFile *machOFile = [[SLMachOFile alloc] initWithData:_data fileName:fileName];
    return machOFile;
}

- (instancetype)initWithData:(NSData *)data fileName:(NSString *)fileName {
    self = [super init];
    if (self) {
        self.fileName = fileName;
        self.data = data;
    }
    return self;
}

@end

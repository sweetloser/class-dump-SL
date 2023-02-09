//
//  SLFatFile.m
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/9.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import "SLFatFile.h"
#import "SLDataCursor.h"
#include <mach-o/arch.h>
#include <mach-o/fat.h>

@interface SLFatFile()
@property(nonatomic,strong,readwrite)NSMutableArray *arches;
@end

@implementation SLFatFile

- (id)init {
    self = [super init];
    if (self) {
        self.arches = [NSMutableArray new];
    }
    return self;
}

- (instancetype)initWithData:(NSData *)data fileName:(NSString *)fileName {
    self = [super initWithData:data fileName:fileName];
    if (self) {
        SLDataCursor *cursor = [[SLDataCursor alloc] initWithData:data];
        struct fat_header header;
        header.magic = [cursor readBigInt32];
        NSLog(@"0x%x",header.magic);
        
        if (header.magic == FAT_MAGIC) {
            
        }
        
    }
    return self;
}

@end

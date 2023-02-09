//
//  SLDataCursor.m
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/9.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import "SLDataCursor.h"
#import <libkern/OSByteOrder.h>

@interface SLDataCursor()

@property(nonatomic,copy,readwrite)NSData *data;
@property(nonatomic,assign, readwrite)NSUInteger offset;

@end

@implementation SLDataCursor

- (instancetype)initWithData:(NSData *)data {
    self = [super init];
    if (self) {
        self.data = data;
        self.offset = 0;
    }
    return self;
}

- (const void *)bytes {
    return [self.data bytes];
}

- (uint32_t)readBigInt32 {
    uint32_t result = 0;
    if (self.offset+sizeof(result) <= [self.data length]) {
        result = *(uint32_t *)[self bytes];
        result = OSReadBigInt32([self bytes], self.offset);
    }
    return result;
}
@end

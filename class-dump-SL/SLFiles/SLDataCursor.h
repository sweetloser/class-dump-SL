//
//  SLDataCursor.h
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/9.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SLDataCursor : NSObject

@property(nonatomic,copy,readonly)NSData *data;

@property(nonatomic,assign, readonly)NSUInteger offset;

- (instancetype)initWithData:(NSData *)data;

-(const void *)bytes;

-(uint32_t)readBigInt32;

@end

NS_ASSUME_NONNULL_END

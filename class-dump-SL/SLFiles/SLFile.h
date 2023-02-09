//
//  SLFile.h
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/9.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SLFile : NSObject

/// 文件路径
@property(nonatomic,copy,readonly)NSString *fileName;

/// Byte
@property(nonatomic,copy,readonly)NSData *data;

+ (id)fileWithContentsOfFile:(NSString *)fileName;

- (instancetype)initWithData:(NSData *)data fileName:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END

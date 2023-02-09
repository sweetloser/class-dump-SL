//
//  NSString+CDExtensions.h
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/9.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (CDExtensions)

/// 获取可执行文件路径
-(NSString *)executablePath;

@end

NS_ASSUME_NONNULL_END

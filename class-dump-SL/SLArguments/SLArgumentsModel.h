//
//  SLArgumentsModel.h
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/7.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SLArgumentsModel : NSObject

/// 参数个数
@property(nonatomic,assign,readonly)NSInteger argc;
/// ivar偏移
@property(nonatomic,assign,readonly)BOOL isShowIvarOffsets;
/// method地址偏移
@property(nonatomic,assign,readonly)BOOL isShowMethodAddresses;
/// 输出路径
@property(nonatomic,copy,readonly)NSString *outputPath;
/// 输入路径
@property(nonatomic,copy,readonly)NSString *inputPath;
/// 待dump文件的路径【可执行文件路径】
@property(nonatomic,copy,readonly)NSString *executablePath;

- (instancetype)initWithArgc:(int)argc andArgs:(char * _Nonnull const *_Nonnull)args;

@end

NS_ASSUME_NONNULL_END

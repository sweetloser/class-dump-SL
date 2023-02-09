//
//  SLFatFile.h
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/9.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import "SLFile.h"

NS_ASSUME_NONNULL_BEGIN

@interface SLFatFile : SLFile

@property(nonatomic,strong,readonly)NSArray *arches;

@end

NS_ASSUME_NONNULL_END

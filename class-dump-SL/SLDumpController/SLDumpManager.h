//
//  SLDumpManager.h
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/7.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLArgumentsModel.h"
#import "SLUsageManager.h"
#import "SLFile.h"

NS_ASSUME_NONNULL_BEGIN

@interface SLDumpManager : NSObject

@property(nonatomic,strong)SLArgumentsModel *argumentsModel;
@property(nonatomic,strong)SLUsageManager *usageManager;
@property(nonatomic,strong)SLFile *file;

-(BOOL)dump;

@end

NS_ASSUME_NONNULL_END

//
//  SLArgumentsModel.m
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/7.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import "SLArgumentsModel.h"
#import <getopt.h>
#import "NSString+CDExtensions.h"

@interface SLArgumentsModel()

@property(nonatomic,assign,readwrite)NSInteger argc;
@property(nonatomic,assign,readwrite)BOOL isShowIvarOffsets;
@property(nonatomic,assign,readwrite)BOOL isShowMethodAddresses;
@property(nonatomic,copy,readwrite)NSString *outputPath;
@property(nonatomic,copy,readwrite)NSString *inputPath;
@property(nonatomic,copy,readwrite)NSString *executablePath;

@end

@implementation SLArgumentsModel

- (instancetype)initWithArgc:(int)argc andArgs:(char *const *)args {
    self = [super init];
    if (self) {
        [self _getoptWtihArgc:argc andArgs:args];
    }
    return self;
}


/// 解析参数
-(void)_getoptWtihArgc:(int)argc andArgs:(char *const *)args {
    self.argc = argc;
    struct option longOpts[] = {
        {"show-ivar-offsets",   no_argument,        NULL,   'a'},
        {"show-imp-addr",       no_argument,        NULL,   'A'},
        {"output-dir",          required_argument,  NULL,   'o'},
    };
    int ch;
    while ((ch=getopt_long(argc, args, "aAo:", longOpts, NULL)) != -1) {
        switch (ch) {
            case 'a':
                self.isShowIvarOffsets = YES;
                break;
            case 'A':
                self.isShowMethodAddresses = YES;
                break;
            case 'o':
                self.outputPath = [NSString stringWithUTF8String:optarg];
            default:
                break;
        }
    }
    
    // 获取输入文件路径【待dump二进制文件】
    if (optind < argc) {
        //
        NSLog(@"%s",args[optind]);
        self.inputPath = [[NSFileManager defaultManager] stringWithFileSystemRepresentation:args[optind] length:strlen(args[optind])];
        self.executablePath = [self.inputPath executablePath];
    }
}

@end

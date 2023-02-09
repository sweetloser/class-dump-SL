//
//  NSString+CDExtensions.m
//  class-dump-SL
//
//  Created by zengxiangxiang on 2023/2/9.
//  Copyright © 2023 SweetLoser. All rights reserved.
//

#import "NSString+CDExtensions.h"

@implementation NSString (CDExtensions)

- (NSString *)executablePath {
    NSString *_executablePath;
    
    NSBundle *bundle = [NSBundle bundleWithPath:self];
    if (bundle != nil) {
        // 目录是一个 bundle
        if ([bundle executablePath] == nil) {
            return nil;
        }
        _executablePath = [[[bundle executablePath] stringByResolvingSymlinksInPath] stringByStandardizingPath];
    } else {
        _executablePath = [[self stringByResolvingSymlinksInPath] stringByStandardizingPath];
    }
    return _executablePath;
}

@end

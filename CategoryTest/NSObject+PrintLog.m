//
//  NSObject+PrintLog.m
//  CategoryTest
//
//  Created by Civet on 2020/11/18.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "NSObject+PrintLog.h"
#import <objc/runtime.h>

@interface NSObject ()  //扩展中添加的属性为private

@end

static char imageURLKey;
@implementation NSObject (PrintLog)

- (void)printCategoryLog{
    NSLog(@"this is a category of NSObject");
}

- (void)setUrl:(NSString *)url{
    objc_setAssociatedObject(self, &imageURLKey, url, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //objc_setAssociatedObject(self, @"key", url, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)url{
    return objc_getAssociatedObject(self, &imageURLKey);
}


@end

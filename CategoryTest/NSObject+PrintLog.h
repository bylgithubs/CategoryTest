//
//  NSObject+PrintLog.h
//  CategoryTest
//
//  Created by Civet on 2020/11/18.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (PrintLog)

@property (nonatomic, retain) NSString *url;
- (void)printCategoryLog;

@end

NS_ASSUME_NONNULL_END

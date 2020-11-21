//
//  ViewController.m
//  CategoryTest
//
//  Created by Civet on 2020/11/18.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "ViewController.h"
//#import "NSObject+PrintLog.h"
#import "TestViewController.h"
#import <objc/runtime.h>
#import "NSObject+PrintLog.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *str;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self categoryTest];
    //[self extensionTest];
}

-(void)extensionTest{
    TestViewController *tv = [[TestViewController alloc] init];
}

- (void)categoryTest{
    NSObject *obj = [[NSObject alloc] init];
    [obj performSelector:@selector(printCategoryLog)];//使用performSelector不需要导入头文件
    //[obj printCategoryLog];
    obj.url = @"https://www.baidu.com";
    NSLog(@"---------%@",obj.url);
}




@end

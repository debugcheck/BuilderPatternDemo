//
//  ViewController.m
//  BuilderPatternDemo
//
//  Created by KYao on 16/2/22.
//  Copyright © 2016年 KYao. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Student *aTest = [Student makeWith:^(id<StudentMaker> constructionBlock) {
        
        constructionBlock.name = @"name";
    }];
    
    NSLog(@"name:%@ age:%ld", aTest.name, (long)aTest.age);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

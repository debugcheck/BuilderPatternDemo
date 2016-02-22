//
//  FLStudent.m
//  BuilderDemo
//
//  Created by KYao on 16/2/22.
//  Copyright © 2016年 KYao. All rights reserved.
//

#import "Student.h"

@interface _FLStudentMakerMaker : NSObject <StudentMaker>
- (Student *)makeRecipe;
@end

@implementation _FLStudentMakerMaker

@synthesize name = _name;
@synthesize age = _age;

- (Student *)makeRecipe
{
    return [[Student alloc] initWithName:self.name age:self.age];
}

@end


@implementation Student

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age
{
    if (!(self = [super init])) { return nil; }
    
    _name = [name copy];
    _age = age;
    
    return self;
}

+ (instancetype)makeWith:(void (^)(id<StudentMaker>))constructionBlock
{
    NSParameterAssert(constructionBlock);
    
    _FLStudentMakerMaker *maker = [[_FLStudentMakerMaker alloc] init];
    constructionBlock(maker);
    
    return [maker makeRecipe];
}


@end

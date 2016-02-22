//
//  FLStudent.h
//  BuilderDemo
//
//  Created by KYao on 16/2/22.
//  Copyright © 2016年 KYao All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StudentMaker <NSObject>

@required
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

@end



@interface Student : NSObject

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;
+ (instancetype)makeWith:(void (^)(id<StudentMaker>))constructionBlock;

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, assign, readonly) NSInteger age;

@end

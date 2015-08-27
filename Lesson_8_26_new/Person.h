//
//  Person.h
//  Lesson_8_26_new
//
//  Created by 张天琦 on 15/8/26.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic,retain)NSString * name;
@property (nonatomic,assign)NSInteger age;
@property (nonatomic,copy)NSString * gender;
@property (nonatomic,retain)NSString * groupName;
@property (nonatomic,assign)NSString * address;
-(id)initWithName:(NSString *)name;
+(id)initWithName:(NSString *)name;
@end

//
//  Person.m
//  Lesson_8_26_new
//
//  Created by 张天琦 on 15/8/26.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "Person.h"
#import "NSString+Characters.h"
@implementation Person
@synthesize name = _name;
@synthesize gender = _gender;
@synthesize age = _age;
@synthesize address = _address;
@synthesize groupName= _groupName;
- (void)dealloc
{
//    dealloc方法执行之后,对象被销毁
//    Person对象的实例变量(对象类型的)在引用其他的对象类型可能会造成被引用对象的计数增加
//    对象被销毁之前,需要减少相应的引用计数
    [_name release];
    [_groupName release];
//    [_gender release];  //copy 修饰的也不要 release
//    [_address release]; //assign修饰的不用release
    [super dealloc];
}
-(id)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        
        _name= [name retain];   //两个人用的话, 那个人用 是1  释放了 你就没有了,所以用就自己加.用完自己释放.这样最保准. 10个人用每个人加 1
        _groupName = [[name  firstCharacterOfString] retain];
//        firstCharacterOfString返回的对象不是我们自己创建的,为了.......上面那句话 ......
    }
    
    return self;
}
+(id)initWithName:(NSString *)name{
    
    Person * p = [[Person alloc]initWithName:name];
    [p autorelease];
    return p;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@ %ld %@", _name,_gender,_age,_address];
}
@end

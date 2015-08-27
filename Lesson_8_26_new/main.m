//
//  main.m
//  Lesson_8_26_new
//
//  Created by 张天琦 on 15/8/26.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "NSString+Characters.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Person * p = [[Person alloc]init];
        /*
        [p setName:@"LiLei"];
        [p setGender:@"lv"];
        [p setAddress:@"海淀"];
        [p setGroupName:@"L"];
        
        
        NSLog(@"%lu",p.retainCount);
        [p release];
        NSLog(@"%@",p);
        */
        /*
        NSString * str = [[NSString alloc]initWithFormat:@"张三"];
        p.name = str;
//        赋值后销毁str   因为调用 setter方法 加1 了所以没问题的
        [str release];
        NSLog(@"%@",p.name);
//        [p autorelease];
        NSString * str1 = [[NSString alloc]initWithFormat:@"nv"];
//        copy的 释放 没问题,因为用的是自己复制的
        p.gender = str1;
        [str1 release];
        NSLog(@"%@",p.gender);
        NSString * str2 =[[NSString alloc]initWithFormat:@"haidian"];
        p.address = str2;
        [str2 release];
        [p release];
        NSLog(@"%@",p.address);
//        用构造便利器创建的对象在方法里释放,不在外面释放
        Person * pp = [Person initWithName:@"af"];
        [pp release];
        */
#pragma mark collection
        Person * p1 = [[Person alloc]init];
        [p1 autorelease];
        Person * p2 = [Person initWithName:@"wa"];
        Person * p3 = [[Person alloc]initWithName:@"wer"];
        NSLog(@"%lu %lu %lu",p1.retainCount,p2.retainCount,p3.retainCount);
        [p3 autorelease];
        NSMutableArray * arr =[NSMutableArray arrayWithObjects:p1,p2,p3, nil];
        NSLog(@"%lu %lu %lu",p1.retainCount,p2.retainCount,p3.retainCount);
        [arr removeObjectAtIndex:2];
        NSLog(@"%lu %lu %lu",p1.retainCount,p2.retainCount,p3.retainCount);
        [arr removeAllObjects];
        NSLog(@"%lu %lu %lu",p1.retainCount,p2.retainCount,p3.retainCount);
        
        
        /*
         
         1.在容器类中,我们只需要对自己创建的对象负责,只能释放自己拥有的对象 
         2.凡是通过retain ,copy ,alloc获得的对象,引用计数加1 都必须在不使用的时候调用release ,autuorelease释放 所有权 引用计数 -1 
         3.在某一代码块中,对同一对象的引用计数操作,增加或减少,必须是相等的
         4.dealloc 中 实例变量的销毁, retain修饰的属性 都需要必须在dealloc 中销毁
         
         
         */
    }
    return 0;
}

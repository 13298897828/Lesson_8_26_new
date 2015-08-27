//
//  NSString+Characters.h
//  Lesson_8_26_new
//
//  Created by 张天琦 on 15/8/26.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

//

//  NSString+Characters.h



#import <Foundation/Foundation.h>



@interface NSString (Characters)



//讲汉字转换为拼音(无音标)

- (NSString *)pinyinOfString;





//汉字转换为拼音后，返回大写的首字母

- (NSString *)firstCharacterOfString;

@end



//

//  NSString+Characters.m

//  AddressBook



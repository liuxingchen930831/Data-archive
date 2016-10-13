//
//  Person.h
//  Plist存储
//
//  Created by liuxingchen on 16/10/13.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import <Foundation/Foundation.h>
//归档需要遵守NSCoding协议
@interface Person : NSObject<NSCoding>
@property(nonatomic,strong)NSString * name ;
@property(nonatomic,assign)int age ;
@end

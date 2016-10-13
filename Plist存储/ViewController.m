//
//  ViewController.m
//  Plist存储
//
//  Created by liuxingchen on 16/10/13.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)save:(id)sender
{
    Person * p = [[Person alloc]init];
    p.name = @"xc";
    p.age = 23;
    NSString *cachepath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filepath = [cachepath stringByAppendingString:@"person.data"];
    [NSKeyedArchiver archiveRootObject:p toFile:filepath];
}
- (IBAction)read:(id)sender
{
    NSString *cachepath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filepath = [cachepath stringByAppendingString:@"person.data"];
    Person *p = [NSKeyedUnarchiver unarchiveObjectWithFile:filepath];
    NSLog(@"%@--%i",p.name,p.age);
}

@end

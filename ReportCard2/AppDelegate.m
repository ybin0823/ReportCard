//
//  AppDelegate.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "AppDelegate.h"
#import "YBClass.h"
#import "MyApplication.h"

@implementation AppDelegate
-(void)started {
    NSLog(@"start");
}
-(void)willExit {
    NSLog(@"exit");
}
-(void)runCommand:(NSString *)event {
    NSLog(@"%@", event);
}
@end

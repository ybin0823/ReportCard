//
//  main.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 8..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyApplication.h"
#import "AppDelegate.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        MyApplication *myApplicationMain = [MyApplication MyApplicationMain:NSStringFromClass([AppDelegate class])];
        [myApplicationMain start];
    }
    return 0;
}

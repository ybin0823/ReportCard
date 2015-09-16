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

NSString* GetStringFromFile(NSString* path)
{
    NSError *error;
    NSString *stringFromFile = [[[NSString alloc]
                                 initWithContentsOfFile:path
                                 encoding:NSUTF8StringEncoding
                                 error:&error] autorelease];
    if (stringFromFile == nil) {
        // an error occurred
        NSLog(@"Error reading file at %@\n%@", path, [error localizedFailureReason]);
    }
    return stringFromFile;
}

@implementation AppDelegate
{
    YBClass *myClass;
}
-(void)started {
    NSLog(@"print : 학생 정보 / 학급 합계, 평균");
    NSLog(@"korean : 국어 성적 순 정렬");
    NSLog(@"math : 수학 성적 순 정렬");
    NSLog(@"english : 영어 성적 순 정렬");
    NSLog(@"exit : 종료");
    NSString *path = @"/Users/jangyoungbin/Desktop/2학기/iOS/ReportCard2/reports.txt";
    myClass = [YBClass YBClassWithString:GetStringFromFile(path)];
}
-(void)willExit {
    NSLog(@"Good Bye~");
}
-(void)runCommand:(NSString *)event {
    NSLog(@"%@", event);

    if ([event isEqualToString:@"print"]) {
        [myClass showWithStudents];
        [myClass showWithSumAndAvg];
        return;
    }
    [myClass sortingUsingSubject:event];
    [myClass showWithStudents];
}

@end

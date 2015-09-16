//
//  main.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 8..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YBStudent.h"
#import "YBClass.h"
#import "MyApplication.h"
#import "AppDelegate.h"


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

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        MyApplication *myApplicationMain = [MyApplication MyApplicationMain:NSStringFromClass([AppDelegate class])];
        [myApplicationMain start];
        
        //이름 국어 영어 수학
        //장영빈 90 100 85
//        NSString *path = @"/Users/jangyoungbin/Desktop/2학기/iOS/ReportCard2/reports.txt";
//        YBClass *myClass = [YBClass YBClassWithString:GetStringFromFile(path)];
//        
//        while (YES) {
//            NSLog(@"======= Report Card =======");
//            NSLog(@"1. Students report card");
//            NSLog(@"2. Class sum and avg");
//            NSLog(@"3. Sorted students using korean");
//            NSLog(@"4. Sorted students using english");
//            NSLog(@"5. Sorted students using math");
//            NSLog(@"6. exit");
//            
//            int input;
//            scanf("%d", &input);
//            
//            switch (input) {
//                case 1:
//                    [myClass showWithStudents];
//                    break;
//                case 2:
//                    [myClass showWithSumAndAvg];
//                    break;
//                case 3:
//                    [myClass sortingUsingSubject:@"korean"];
//                    [myClass showWithStudents];
//                    break;
//                case 4:
//                    [myClass sortingUsingSubject:@"english"];
//                    [myClass showWithStudents];
//                    break;
//                case 5:
//                    [myClass sortingUsingSubject:@"math"];
//                    [myClass showWithStudents];
//                    break;
//                case 6:
//                    NSLog(@"Good Bye ~ ");
//                    return 0;
//                default:
//                    NSLog(@"You choose wrong number. Please select 1~5 number.");
//            }
//            
//        }
    }
    return 0;
}

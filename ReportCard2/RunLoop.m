//
//  RunLoop.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "RunLoop.h"

@implementation RunLoop
{
    EventQueue *queue;
    id <YBApplicationDelegate> appDelegate;
}

@synthesize queue = queue;
@synthesize appDelegate = appDelegate;

-(instancetype)initWithDelegate:(id)applicationDelegate {
    self = [super init];
    
    if (self) {
        queue = [[EventQueue alloc] init];
        appDelegate = [applicationDelegate retain];
    }
    
    return self;
}
-(void)dealloc {
    [queue release];
    [appDelegate release];
    
    [super dealloc];
}

-(void)run {
    NSLog(@"Launching app is success");
    char input[100];

    while(YES) {
        NSString *event = [queue remove];
        if (event != nil) {
            [self delegate:event];
        }
        if ([event isEqualToString:@"exit"]) {
            return;
        }
        NSLog(@"input event : ");
        scanf("%s", input);
        [queue add:[NSString stringWithCString:input encoding:NSUTF8StringEncoding]];
    }
}

-(void)delegate:(NSString *)event {
    if ([event isEqualToString:@"start"]) {
        [appDelegate started];
        return;
    }
    if ([event isEqualToString:@"exit"]) {
        [appDelegate willExit];
        return;
    }
    [appDelegate runCommand:event];
}

@end

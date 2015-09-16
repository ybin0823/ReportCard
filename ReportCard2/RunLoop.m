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

-(BOOL)isEmpty {
    if ([[queue queue] count] == 0) {
        return YES;
    }
    return NO;
}
-(void)run {
    NSLog(@"Launching app is success");

    while(YES) {
        if(![self isEmpty]) {
            if(![self willDelegate]) {
                return;
            };
        }
    }
}
-(BOOL)willDelegate {
    NSString *event = [queue remove];
    if ([event isEqualToString:@"start"]) {
        [appDelegate start];
        return YES;
    }
    if ([event isEqualToString:@"exit"]) {
        [appDelegate exit];
        return NO;
    }
    [appDelegate runEvent:event];
    return YES;
}

@end

//
//  EventQueue.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "EventQueue.h"

@implementation EventQueue
{
    NSMutableArray *events;
}

-(instancetype) init {
    self = [super init];
    
    if(self) {
        events = [[NSMutableArray alloc] init];
    }
    
    return self;
}
-(void)dealloc {
    [events release];
    
    [super dealloc];
}

-(void)add:(NSString *)event {
    [events addObject:event];
}
-(NSString *)remove {
    NSString *event = [[events firstObject] retain];
    
    [events removeObjectAtIndex:0];
    
    return [event autorelease];
}

@end

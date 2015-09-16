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
    NSMutableArray *queue;
}

@synthesize queue = queue;

-(instancetype) init {
    self = [super init];
    
    if(self) {
        queue = [[NSMutableArray alloc] init];
    }
    
    return self;
}
-(void)dealloc {
    [queue release];
    
    [super dealloc];
}

-(void)add:(NSString *)event {
    [queue addObject:event];
}
-(NSString *)remove {
    NSString *event = [[queue firstObject] retain];
    
    [queue removeObjectAtIndex:0];
    
    return [event autorelease];
}

@end

//
//  MyApplication.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "MyApplication.h"

static MyApplication *myApplication = nil;

@implementation MyApplication
{
    RunLoop *loop;
}

@synthesize loop = loop;

+(instancetype) MyApplicationMain:(NSString *)delegateClassName {
    @synchronized(self) {
        if (myApplication == nil) {
            myApplication = [[MyApplication alloc] initWithDelegate:delegateClassName];
        }
    }
    return myApplication;
}
-(instancetype) initWithDelegate:(NSString *)delegateClassName {
    self = [super init];
    
    if (self) {
        id applicationDelegate = [[[NSClassFromString(delegateClassName) alloc] init] autorelease];
        loop = [[RunLoop alloc] initWithDelegate:applicationDelegate];
    }
    return self;
}
+ (id)sharedManager {
    @synchronized(self) {
        if(myApplication == nil)
            myApplication = [[super allocWithZone:NULL] init];
    }
    return myApplication;
}
+ (id)allocWithZone:(NSZone *)zone {
    return [[self sharedManager] retain];
}
- (id)copyWithZone:(NSZone *)zone {
    return self;
}
- (instancetype) alloc {
    if (myApplication == nil) {
        myApplication = [MyApplication alloc];
    }
    return myApplication;
}
- (id)retain {
    return self;
}
- (NSUInteger)retainCount {
    return UINT_MAX;
}
- (oneway void)release {
    // never release
}
- (instancetype)autorelease {
    return self;
}
- (id)init {
    self = [super init];
    
    if (self) {
        
    }
    return self;
}
-(void)dealloc {
    [loop release];
    
    [super dealloc];
}

-(void)start {
    [[loop queue] add:@"start"];
    [loop run];
}

@end

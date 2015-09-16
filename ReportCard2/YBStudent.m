//
//  Student.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 8..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "YBStudent.h"


@implementation YBStudent
{
    NSString *name;
    YBScore *score;
}

@synthesize name = name;
@synthesize score = score;

+(instancetype)YBStudentWithString:(NSString*)str {
    return [[[self alloc] initWithArray:[str componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]] autorelease];
}
-(instancetype)initWithArray:(NSArray*)array {
    self = [super init];
    
    if (self) {
        name = [[array firstObject] retain];
        score = [[YBScore YBScoreWithArray:[array subarrayWithRange:NSMakeRange(1, 3)]] retain];
    }
    
    return self;
}

-(void) dealloc {
    
    [name release];
    [score release];
    
    [super dealloc];
}

@end

//
//  YBScore.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 8..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "YBScore.h"


@implementation YBScore
{
    double korean;
    double english;
    double math;
    double sum;
    double avg;
}

@synthesize korean = korean;
@synthesize english = english;
@synthesize math = math;
@synthesize sum = sum;
@synthesize avg = avg;

+(instancetype)YBScoreWithArray:(NSArray*)array {
    return [[[self alloc] initWithKorean:array[0] english:array[1] math:array[2]] autorelease];
}
-(instancetype)initWithKorean:(NSString *) aKorean english:aEnglish math:aMath {
    self = [super init];
    
    if (self) {
        korean = [aKorean doubleValue];
        english = [aEnglish doubleValue];
        math = [aMath doubleValue];
        sum = korean + english + math;
        avg = sum / 3;
    }
    
    return self;
}

@end

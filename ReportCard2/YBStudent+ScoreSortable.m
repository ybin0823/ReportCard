//
//  YBStudent+ScoreSortable.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 9..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "YBStudent+ScoreSortable.h"

@implementation YBStudent (ScoreSortable)

- (double)scoreWithSubject:(NSString *)subject {
    @try {
        return [[[self score] valueForKey:subject] doubleValue];
    }
    @catch (NSException *exception) {
        NSLog(@"%@ : wrong input value", subject);
        return -1.0;
    }
}

@end

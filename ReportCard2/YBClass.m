//
//  YBClass.m
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 8..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "YBClass.h"


@implementation YBClass
{
    NSArray *students;
    double sumOfKorean;
    double sumOfEnglish;
    double sumOfMath;
    double avgOfKorean;
    double avgOfEnglish;
    double avgOfMath;
}

@synthesize students = students;
@synthesize sumOfKorean = sumOfKorean;
@synthesize sumOfEnglish = sumOfEnglish;
@synthesize sumOfMath = sumOfMath;
@synthesize avgOfKorean = avgOfKorean;
@synthesize avgOfEnglish = avgOfEnglish;
@synthesize avgOfMath = avgOfMath;

+(instancetype)YBClassWithString:(NSString *)str {
    return [[[self alloc] initWithArray:[str componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]]] autorelease];
}
-(instancetype)initWithArray:(NSArray*)array {
    self = [super init];
    
    if (self) {
        NSMutableArray *temp = [[[NSMutableArray alloc] init] autorelease];
        for (NSString* str in array) {
            [temp addObject:[YBStudent YBStudentWithString:str]];
        }
        students = [[NSArray arrayWithArray:temp] retain];
        
        for(YBStudent *student in students) {
            sumOfKorean += [[student score] korean];
            sumOfEnglish += [[student score] english];
            sumOfMath += [[student score] math];
        }
        
        avgOfKorean = sumOfKorean / [students count];
        avgOfEnglish = sumOfEnglish / [students count];
        avgOfMath = sumOfMath / [students count];
    }
    
    return self;
}
-(void) showWithStudents {
    NSLog(@" 이름 \t 국어 \t 영어 \t 수학 \t 합계 \t 평균");
    for(YBStudent *student in students) {
        NSLog(@"%@\t%.2lf\t%.2lf\t%.2lf\t%.2lf\t%.2lf", [student name], [[student score] korean], [[student score] english],
              [[student score] math], [[student score] sum], [[student score] avg]);
    }
}
-(void)showWithSumAndAvg {
    NSLog(@"==== 국어 ====");
    NSLog(@"총합 : %.2lf", sumOfKorean);
    NSLog(@"평균 : %.2lf", avgOfKorean);
    
    NSLog(@"==== 영어 ====");
    NSLog(@"총합 : %.2lf", sumOfEnglish);
    NSLog(@"평균 : %.2lf", avgOfEnglish);
    
    NSLog(@"==== 수학 ====");
    NSLog(@"총합 : %.2lf", sumOfMath);
    NSLog(@"평균 : %.2lf", avgOfMath);
}
-(void)sortingUsingSubject:(NSString *)subject {
    NSArray *sortedArray = [students sortedArrayUsingComparator:^(id obj1, id obj2) {
        id <ScoreSortable> sortable1 = obj1;
        id <ScoreSortable> sortable2 = obj2;
        
        double score1 = [sortable1 scoreWithSubject:subject];
        double score2 = [sortable2 scoreWithSubject:subject];
        
        if (score1 > score2)
            return (NSComparisonResult)NSOrderedAscending;
        else if (score1 < score2)
            return (NSComparisonResult)NSOrderedDescending;
        else
            return (NSComparisonResult)NSOrderedSame;
    }];
    
    [students release];
    students = [sortedArray retain];
}

-(void) dealloc {
    
    [students release];
    
    [super dealloc];
}


@end

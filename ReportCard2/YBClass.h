//
//  YBClass.h
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 8..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YBStudent.h"
#import "ScoreSortable.h"


@interface YBClass : NSObject

@property (nonatomic, readonly) NSArray *students;
@property (nonatomic, readonly) double sumOfKorean;
@property (nonatomic, readonly) double sumOfEnglish;
@property (nonatomic, readonly) double sumOfMath;
@property (nonatomic, readonly) double avgOfKorean;
@property (nonatomic, readonly) double avgOfEnglish;
@property (nonatomic, readonly) double avgOfMath;

+(instancetype)YBClassWithString:(NSString*)str;
-(void)showWithStudents;
-(void)showWithSumAndAvg;
-(void)sortingUsingSubject:(NSString *)subject;

@end

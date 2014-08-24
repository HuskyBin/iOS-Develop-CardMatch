//
//  Card.h
//  CardMatch
//
//  Created by zhengbin xiang on 8/22/14.
//  Copyright (c) 2014 zhengbin xiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *content;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMathched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end

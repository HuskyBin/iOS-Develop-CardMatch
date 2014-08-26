//
//  PlayingCard.h
//  CardMatch
//
//  Created by zhengbin xiang on 8/24/14.
//  Copyright (c) 2014 zhengbin xiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h""

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxrank;

@end

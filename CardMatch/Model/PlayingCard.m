//
//  PlayingCard.m
//  CardMatch
//
//  Created by zhengbin xiang on 8/24/14.
//  Copyright (c) 2014 zhengbin xiang. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)content
{
    //NSArray *rankStrings = @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    return [self.suit stringByAppendingString:[[PlayingCard rankStrings] objectAtIndex:self.rank]];
}

+ (NSArray *)validSuits
{
    return @[@"♥︎",@"♦︎",@"♠︎",@"♣︎"];
}

@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxrank
{
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxrank]) {
        _rank = rank;
    }
}


@end

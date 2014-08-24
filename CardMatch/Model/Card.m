//
//  Card.m
//  CardMatch
//
//  Created by zhengbin xiang on 8/22/14.
//  Copyright (c) 2014 zhengbin xiang. All rights reserved.
//

#import "Card.h"

@interface Card()
@end

@implementation Card

- (int)match:(NSArray *)otherCards {
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.content isEqualToString:self.content]) {
            score = 1;
        }
    }
    return score;
}

@end
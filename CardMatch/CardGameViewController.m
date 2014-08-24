//
//  CardGameViewController.m
//  CardMatch
//
//  Created by zhengbin xiang on 8/22/14.
//  Copyright (c) 2014 zhengbin xiang. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck* deck;
@end

@implementation CardGameViewController

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flipse: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        UIImage *cardImage1 = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage1 forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else {
        Card *card = [self.deck drawRandomCard];
        if (card) {
            UIImage *cardImage = [UIImage imageNamed:@"blankCard"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle:card.content forState:UIControlStateNormal];
            
        }
        else {
            UIImage *cardImage = [UIImage imageNamed:@"blankCard"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle: @"No Card" forState:UIControlStateNormal];
        }
    }
    self.flipCount++;
}

- (Deck *)deck
{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

@end

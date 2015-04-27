//
//  KeypadViewController.h
//  ButtonNumberApp
//
//  Created by Dustin Flanary on 4/24/15.
//  Copyright (c) 2015 Dustin Flanary. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KeypadDelegate;

@interface KeypadViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *keypadLabel;
@property NSString *button1Result;
@property NSString *button3Result;
@property BOOL *firstButtonClicked;
@property (weak, nonatomic) id <KeypadDelegate> delegate;

-(IBAction)keypadButtonPressed:(id)sender;
@end

// Creating a custom delegate and custom delegate protocol
@protocol KeypadDelegate <NSObject>
- (void)setButtonTitleLabel:(NSString *)string andBool:(BOOL)firstButtonClicked;

@end

//
//  KeypadViewController.h
//  ButtonNumberApp
//
//  Created by Dustin Flanary on 4/24/15.
//  Copyright (c) 2015 Dustin Flanary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeypadViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *keypadLabel;

-(IBAction)keypadButtonPressed:(id)sender;

@end

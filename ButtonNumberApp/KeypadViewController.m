//
//  KeypadViewController.m
//  ButtonNumberApp
//
//  Created by Dustin Flanary on 4/24/15.
//  Copyright (c) 2015 Dustin Flanary. All rights reserved.
//

#import "KeypadViewController.h"
#import "BNAMainViewController.h"

@interface KeypadViewController ()
@end

@implementation KeypadViewController 


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)keypadButtonPressed:(id)sender {
    NSString *buttonNumber = @"";
    buttonNumber = [buttonNumber stringByAppendingString:[sender currentTitle]];
   
    [self.keypadLabel setText:buttonNumber];
    
    //[self setButtonTitleLabel: YES number:buttonNumber];
    [self setButtonTitleLabel:buttonNumber];
    
   // NSInteger numberChosen = [buttonNumber integerValue]; //Do I need this here?
    
    [self dismissViewControllerAnimated:YES completion: nil];
    
    
}

- (void)setButtonTitleLabel:(NSString *)string {
    if (self.firstButtonClicked == true) {
        self.button1Result = string;
    } else {
        self.button3Result = string;
    }
    
    
   // self.keypadResult = string;
  
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

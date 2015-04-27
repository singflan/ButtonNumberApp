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
   
    // Just to confirm the number chosen
    [self.keypadLabel setText:buttonNumber];
    
    // Dismiss the popover and calling the method to assign the number to the button on the main view controller
    [self dismissViewControllerAnimated:YES completion:^{
        [self.delegate setButtonTitleLabel:buttonNumber andBool:self.firstButtonClicked];
    }];
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

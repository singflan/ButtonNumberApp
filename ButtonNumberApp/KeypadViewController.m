//
//  KeypadViewController.m
//  ButtonNumberApp
//
//  Created by Dustin Flanary on 4/24/15.
//  Copyright (c) 2015 Dustin Flanary. All rights reserved.
//

#import "KeypadViewController.h"
#import "ViewController.h"

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
    NSString *text;
    text = [text stringByAppendingString:[sender currentTitle]];
    [self.keypadLabel setText:text];
    
    [self dismissViewControllerAnimated:YES completion: nil];
    
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([[segue identifier] isEqualToString:@"button1Segue"])
//    {
//        UIStoryboardPopoverSegue *pop = (UIStoryboardPopoverSegue*)segue;
//        pop.keypadViewController.delegate = self;
//    }
//}

//- (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController {
//    [self.popoverController dismissPopoverAnimated:YES];
//    return YES;
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  BNAMainViewController.m
//  ButtonNumberApp
//
//  Created by Dustin Flanary on 4/21/15.
//  Copyright (c) 2015 Dustin Flanary. All rights reserved.
//

#import "BNAMainViewController.h"
#import "KeypadViewController.h"
#import "BNAPickerViewController.h"

@interface BNAMainViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property NSInteger firstNumber;
@property NSInteger secondNumber;
@property NSNumber *result;
@property (weak) UIPopoverController *keypadPopover;

@end

@implementation BNAMainViewController


- (void) viewWillAppear:(BOOL)animated {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        

    
}
- (IBAction)button1Pressed:(id)sender {
    
}
- (IBAction)button2Pressed:(id)sender {
//    UIAlertController *setButtonTitleAlert = [UIAlertController alertControllerWithTitle:@"Choose one" message:@"Mathematical operations" preferredStyle:UIAlertControllerStyleAlert];
//    
//        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"+" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//            [self.button2 setTitle:@"+" forState:UIControlStateNormal];
//        }]];
//    
//        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"-" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//            [self.button2 setTitle:@"-" forState:UIControlStateNormal];
//        }]];
//    
//        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"*" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//            [self.button2 setTitle:@"*" forState:UIControlStateNormal];
//        }]];
//    
//        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"/" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//            [self.button2 setTitle:@"/" forState:UIControlStateNormal];
//        }]];
//    
//        [self presentViewController:setButtonTitleAlert animated:YES completion:nil];
}

- (IBAction)button3Pressed:(id)sender {
    
    
}
- (IBAction)button4Pressed:(id)sender {
    
    
  //  self.answerLabel.text = //
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier  isEqual: @"button1Segue"]) {
        KeypadViewController *kvc = [[KeypadViewController alloc] init];
        kvc = segue.destinationViewController;
        UIPopoverPresentationController *popoverPresentationController = kvc.popoverPresentationController;
        popoverPresentationController.delegate = self;
        kvc.firstButtonClicked = true;
        
    } else if ([segue.identifier isEqual:@"button3Segue"]) {
        KeypadViewController *kvc = segue.destinationViewController;
        UIPopoverPresentationController *popoverPresentationController = kvc.popoverPresentationController;
        popoverPresentationController.delegate = self;
        kvc.firstButtonClicked = false;
        
    } else  if ([segue.identifier isEqual:@"button2Segue"]){
        BNAPickerViewController *pickerVC = segue.destinationViewController;
        UIPopoverPresentationController *popoverPresentationController = pickerVC.popoverPresentationController;
        popoverPresentationController.delegate = self;
    }
}

// I may not need this method
//-(NSInteger)getInt:(NSString *)string {
//    NSLog(string);
//    NSInteger number = [string integerValue];
//    return number;
//}

//-(void)popoverPresentationControllerDidDismissPopover:(UIPopoverPresentationController *)popoverPresentationController {
//    if (self.button1.titleLabel.text != kvc.button1Result) {
//        [self.button1 setTitle:kvc.button1Result forState:UIControlStateNormal];
//    } else if (self.button3.titleLabel.text != kvc.button3Result) {
//        [self.button3 setTitle:kvc.button3Result forState:UIControlStateNormal];
//    }
//}

-(void)dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion {
    //if (self.button1.titleLabel.text != kvc.button1Result) {
    KeypadViewController *kvc = [[KeypadViewController alloc]init];

    [self.button1 setTitle:kvc.button1Result forState:UIControlStateNormal];
    //} else if (self.button3.titleLabel.text != kvc.button3Result) {
    [self.button3 setTitle:kvc.button3Result forState:UIControlStateNormal];
    //}
}
// If I don't want to allow clicks outside of the popover I would uncomment the below code.

//-(BOOL)popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController *)popoverPresentationController {
//    return NO;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

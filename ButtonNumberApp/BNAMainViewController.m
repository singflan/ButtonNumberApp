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

@interface BNAMainViewController () <KeypadDelegate>

@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property NSInteger firstNumber;
@property NSInteger secondNumber;
@property NSNumber *firstNum;
@property NSNumber *secondNum;
@property NSNumber *result;
@property NSString *operationSign;


@end

@implementation BNAMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.operationSign = @"";
    self.result = nil;
    
    self.button1.backgroundColor = [UIColor yellowColor];
    self.button2.backgroundColor = [UIColor yellowColor];
    self.button3.backgroundColor = [UIColor yellowColor];
    self.button4.backgroundColor = [UIColor yellowColor];

    
}

- (IBAction)button2Pressed:(id)sender {
    UIAlertController *setButtonTitleAlert = [UIAlertController alertControllerWithTitle:@"Choose one" message:@"Mathematical operations" preferredStyle:UIAlertControllerStyleAlert];
    
        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"+" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            self.operationSign = @"+";
            [self.button2 setTitle:self.operationSign forState:UIControlStateNormal];
            
        }]];
    
        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"-" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            self.operationSign = @"-";
            [self.button2 setTitle:self.operationSign forState:UIControlStateNormal];
            

        }]];
    
        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"*" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            self.operationSign = @"*";
            [self.button2 setTitle:self.operationSign forState:UIControlStateNormal];
            

        }]];
    
        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"/" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            self.operationSign = @"/";
            [self.button2 setTitle:self.operationSign forState:UIControlStateNormal];
            

        }]];
    
        [self presentViewController:setButtonTitleAlert animated:YES completion:nil];
    
}

- (IBAction)button4Pressed:(id)sender {
    
    NSInteger intResult;
    
    // Check button2's sign to perform the correct operation
    if ([self.operationSign isEqualToString:@"+"]) {
        intResult = self.firstNumber + self.secondNumber;
        self.result = [NSNumber numberWithInteger:intResult];
        
    } else if ([self.operationSign isEqualToString:@"-"]) {
        intResult = self.firstNumber - self.secondNumber;
        self.result = [NSNumber numberWithInteger:intResult];

    } else if ([self.operationSign isEqualToString:@"*"]) {
        intResult = self.firstNumber * self.secondNumber;
        self.result = [NSNumber numberWithInteger:intResult];
        
    } else if ([self.operationSign isEqualToString:@"/"]) {
        CGFloat floatResult = (float)self.firstNumber / (float)self.secondNumber;
        self.result = [NSNumber numberWithFloat:floatResult];
    
    }
    
    // Convert number to string and display on answer label
    NSString *label = [self.result stringValue];
    self.answerLabel.text = label;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier  isEqual: @"button1Segue"]) {
        KeypadViewController *kvc = [[KeypadViewController alloc] init];
        kvc = segue.destinationViewController;
        UIPopoverPresentationController *popoverPresentationController = kvc.popoverPresentationController;
        popoverPresentationController.delegate = self;
        kvc.delegate = self;
        kvc.firstButtonClicked = true;
        
    } else if ([segue.identifier isEqual:@"button3Segue"]) {
        KeypadViewController *kvc = segue.destinationViewController;
        UIPopoverPresentationController *popoverPresentationController = kvc.popoverPresentationController;
        popoverPresentationController.delegate = self;
        kvc.delegate = self;
        kvc.firstButtonClicked = false;
        
    } //else  if ([segue.identifier isEqual:@"button2Segue"]){
//        BNAPickerViewController *pickerVC = segue.destinationViewController;
//        UIPopoverPresentationController *popoverPresentationController = pickerVC.popoverPresentationController;
//        popoverPresentationController.delegate = self;
//        
//    }
}

// Custom delegate method protocol to change button title based on number pressed on the keypad
- (void)setButtonTitleLabel:(NSString *)string andBool:(BOOL)firstButtonClicked {
    
    if (firstButtonClicked) {
        [self.button1 setTitle:string forState:UIControlStateNormal];
        self.firstNumber = [string integerValue]; //This might be unnecessary
        
        
    } else{
        [self.button3 setTitle:string forState:UIControlStateNormal];
        self.secondNumber = [string integerValue];
        
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

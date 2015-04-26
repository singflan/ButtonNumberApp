//
//  ViewController.m
//  ButtonNumberApp
//
//  Created by Dustin Flanary on 4/21/15.
//  Copyright (c) 2015 Dustin Flanary. All rights reserved.
//

#import "ViewController.h"
#import "KeypadViewController.h"

@interface ViewController () 

@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UITextField *hiddenField1;
@property double label1Number;
@property double label2Number;
@property double answer;
@property (weak) UIPopoverController *keypadPopover;



@end

@implementation ViewController


- (void) viewWillAppear:(BOOL)animated {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Add popover dismissal observer
//    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(dismissPopover) name:@"dismissKeypadPopover" object:nil];
    
//    self.hiddenField1 = [[UITextField alloc] initWithFrame:CGRectMake(TEXT_FRAME)];
//    [self.hiddenField1 setHidden:YES];
//    self.hiddenField1.keyboardType = UIKeyboardTypeNumberPad;
//    self.hiddenField1.delegate = self.hiddenField1;
//    [self.hiddenField1 becomeFirstResponder];
//    [self.hiddenField1 resignFirstResponder];

    
}
- (IBAction)button1Pressed:(id)sender {
    
    
    
//    UIAlertController *addNumberAlert = [UIAlertController alertControllerWithTitle:@"Enter a number" message:@"Please" preferredStyle:UIAlertControllerStyleAlert];
//    [addNumberAlert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = @"Enter number here";
//        textField.keyboardType = UIKeyboardTypeDecimalPad;
//        //[textField setHidden:YES];
//       
//        
//    }];
//    
//    
//    
//    //[addNumberAlert add]
//    
//    [addNumberAlert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
//        return ;
//    }]];
//    
//    [addNumberAlert addAction:[UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        UITextField *number = addNumberAlert.textFields.firstObject;
//        NSString *numberString = [NSString string];
//        numberString = number.text;
//    }]];
//    
//    [self presentViewController:addNumberAlert animated:YES completion:nil];
    
    
    //self.hiddenField1:shouldChangeCharactersInRange:
    
    
    //self.button1.titleLabel = self.hiddenField1.text;
    
}
- (IBAction)button2Pressed:(id)sender {
    UIAlertController *setButtonTitleAlert = [UIAlertController alertControllerWithTitle:@"Choose one" message:@"Mathematical operations" preferredStyle:UIAlertControllerStyleAlert];
    
        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"+" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self.button2 setTitle:@"+" forState:UIControlStateNormal];
        }]];
    
        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"-" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self.button2 setTitle:@"-" forState:UIControlStateNormal];
        }]];
    
        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"*" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self.button2 setTitle:@"*" forState:UIControlStateNormal];
        }]];
    
        [setButtonTitleAlert addAction:[UIAlertAction actionWithTitle:@"/" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self.button2 setTitle:@"/" forState:UIControlStateNormal];
        }]];
    
        [self presentViewController:setButtonTitleAlert animated:YES completion:nil];
}

- (IBAction)button3Pressed:(id)sender {
    
    
}
- (IBAction)button4Pressed:(id)sender {
    
    
  //  self.answerLabel.text = //
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
//    KeypadViewController * viewController = (KeypadViewController*)[segue destinationViewController];
//    
//    UIStoryboardPopoverSegue* popoverSegue = (UIStoryboardPopoverSegue*)segue;
//    
//    [popoverSegue.popoverController setPopoverContentSize:CGSizeMake(viewController.view.frame.size.width, viewController.view.frame.size.height)];
//    
//    popoverSegue.sourceViewController.delegate = self;
//    
//    [viewController setPopoverController:popoverSegue.popoverController];
//}
//    var popOver = segue.destinationViewController as! PopOverViewController
//    popOver.popoverPresentationController!.delegate = self

    if ([segue.identifier  isEqual: @"button1Segue"]) {
        KeypadViewController *kvc = segue.destinationViewController;
        UIPopoverPresentationController *popoverPresentationController = kvc.popoverPresentationController;
        popoverPresentationController.delegate = self;
    
    }
}

// If I don't want to allow clicks outside of the popover I would uncomment the below code.

-(BOOL)popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController *)popoverPresentationController {
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

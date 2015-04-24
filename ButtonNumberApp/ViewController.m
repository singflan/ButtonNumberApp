//
//  ViewController.m
//  ButtonNumberApp
//
//  Created by Dustin Flanary on 4/21/15.
//  Copyright (c) 2015 Dustin Flanary. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UITextField *hiddenField1;
@property double label1Number;
@property double label2Number;
@property double answer;


@end

@implementation ViewController
#define TEXT_FRAME                 -50,-50,0,0


- (void) viewWillAppear:(BOOL)animated {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.hiddenField1 = [[UITextField alloc] initWithFrame:CGRectMake(TEXT_FRAME)];
//    [self.hiddenField1 setHidden:YES];
//    self.hiddenField1.keyboardType = UIKeyboardTypeNumberPad;
//    self.hiddenField1.delegate = self.hiddenField1;
//    [self.hiddenField1 becomeFirstResponder];
//    [self.hiddenField1 resignFirstResponder];

    
}
- (IBAction)button1Pressed:(id)sender {
    
    UIAlertController *addNumberAlert = [UIAlertController alertControllerWithTitle:@"Enter a number" message:@"Please" preferredStyle:UIAlertControllerStyleAlert];
    [addNumberAlert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Enter number here";
        textField.keyboardType = UIKeyboardTypeNumberPad;
        //[textField setHidden:YES];
       
        
    }];
    
    [addNumberAlert addObserver:<#(NSObject *)#> forKeyPath:<#(NSString *)#> options:<#(NSKeyValueObservingOptions)#> context:<#(void *)#>]
    
    [addNumberAlert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        return ;
    }]];
    
    [addNumberAlert addAction:[UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        UITextField *number = addNumberAlert.textFields.firstObject;
        NSString *numberString = [NSString string];
        numberString = number.text;
    }]];
    
    [self presentViewController:addNumberAlert animated:YES completion:nil];
    
    
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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Pick a number" message:@"Please" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Done???", nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert show];
    
}
- (IBAction)button4Pressed:(id)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  Palindrome
//
//  Created by Don Bora on 4/28/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *inputTextField;
    __weak IBOutlet UILabel *resultLabel;
    
    
    int result;
}
- (IBAction)check:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showIsPalindrone
{
    resultLabel.text = @"IS a palindrone!";
}

-(void)showIsNotPalindrone
{
    resultLabel.text = @"IS NOT a palindrone!";
}


-(const char*)getCharacterArray
{
    return [inputTextField.text UTF8String];
}


-(void)showResult
{
    resultLabel.text = [NSString stringWithFormat:@"%i", result];

}


-(void)checkForPalindrome
{
    const char* arrayOfCharacters = [self getCharacterArray];
    BOOL isPalindrome = NO;
    
    
    int length = inputTextField.text.length;
    int halfLength = (length / 2);
    for (int i = 0; i < halfLength; i++) {
        if (inputTextField.text.length/2 != inputTextField.text.length - i - 1) {
            isPalindrome = NO;
        }else{
            isPalindrome=YES;
        }
    }
    
    if (isPalindrome) {
        [self showIsPalindrone];
    } 
    else{
        [self showIsNotPalindrone];
    }    
}


-(void)sumIntegers
{
    const char* arrayOfCharacters = [self getCharacterArray];
    
    // parse out the commas, sum up the integers and assign the answer to the variable result
    // i.e.
    int a;
    int b;
    int c;
    int d;
    sscanf(arrayOfCharacters,"%i,%i,%i,%i", &a, &b, &c, &d);
    result=a+b+c+d;
    
    [self showResult];
}

- (IBAction)check:(id)sender
{
    //[self checkForPalindrome];
    
    // Uncomment the following line of code and comment out the previous line of code to run summation
    [self sumIntegers];
}
@end

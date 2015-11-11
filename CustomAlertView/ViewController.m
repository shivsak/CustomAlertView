//
//  ViewController.m
//  CustomAlertView
//
//  Created by Shiv Sakhuja on 6/4/15.
//  Copyright (c) 2015 Shiv Sakhuja. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    CustomAlertView *alert = [[CustomAlertView alloc] initWithTitle:@"No Internet!" message:@"You do not have an internet connection. Please connect to the internet and try again." firstButtonText:@"Okay" cancelButtonText:@"Cancel" withSuperView:self.view];
    [alert.customAlertButton addTarget:self action:@selector(firstAction:) forControlEvents:UIControlEventTouchUpInside];
    [alert.customAlertButtonCancel addTarget:self action:@selector(cancelButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [alert setTheme:1];
    [alert setPosition:0];
    
    [self.view addSubview:alert];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)firstAction:(id)sender {
    NSLog(@"firstAction ran");
}

-(IBAction)cancelButtonPressed:(id)sender {
    [[[sender superview] superview] removeFromSuperview];
}

@end

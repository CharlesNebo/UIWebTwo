//
//  UIWebTwoViewController.m
//  UIWebTwo
//
//  Created by Charles Nebo on 9/18/13.
//  Copyright (c) 2013 charles Nebo. All rights reserved.
//

#import "UIWebTwoViewController.h"

@interface UIWebTwoViewController ()

@end

@implementation UIWebTwoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    webAddress = [[UITextField alloc] initWithFrame:CGRectMake( 10, 10, 250, 30)];
    webAddress.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:webAddress];
    
    btnGo = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnGo.frame = CGRectMake(270, 10, 30, 30);
    [btnGo setTitle:@"Go" forState:UIControlStateNormal];
    [btnGo addTarget:self action:@selector(openUrl) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnGo];
    
    webPage = [[UIWebView alloc] initWithFrame:CGRectMake(0, 45, 320, 300)];
    [self.view addSubview:webPage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) openUrl {

    /*
     NSURL *url = [NSURL URLWithString:webAddress.text];
     NSURLRequest *request = [NSURLRequest requestWithURL:url];
     [webPage loadRequest:request];
     */

    
    

  [webPage loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:webAddress.text]]];

   [webAddress resignFirstResponder];
}


@end

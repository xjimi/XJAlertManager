//
//  ViewController.m
//  XJAlertManagerDemo
//
//  Created by jimi on 2014/11/21.
//  Copyright (c) 2014年 XJIMI. All rights reserved.
//

#import "ViewController.h"
#import "XJAlertManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)showAlert
{
    XJAlertManager *alert = [XJAlertManager alertWithTitle:@"title" message:@"message" viewController:self];
    [alert addButtonWithTitle:@"OK" handler:^{}];
    [alert addDestructiveButtonWithTitle:@"Destructive" handler:^{}];
    [alert addCancelButtonWithTitle:@"CANCEL" handler:^{}];
    [alert show];
}

- (IBAction)showActionSheet
{
    XJAlertManager *alert = [XJAlertManager actionSheetWithTitle:@"title" message:@"message" viewController:self];
    [alert addButtonWithTitle:@"OK" handler:^{}];
    [alert addDestructiveButtonWithTitle:@"Destructive" handler:^{}];
    [alert addCancelButtonWithTitle:@"CANCEL" handler:^{}];
    [alert show];
}
@end

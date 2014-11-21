//
//  XJAlertManager.m
//  XJAlertManagerDemo
//
//  Created by jimi on 2014/11/21.
//  Copyright (c) 2014年 XJIMI. All rights reserved.
//

#import "XJAlertManager.h"

@interface XJAlertManager ()

@property (nonatomic, strong) id alert;
@property (nonatomic, weak) id viewController;

@end

@implementation XJAlertManager

+ (instancetype)alertWithTitle:(NSString *)title message:(NSString *)message viewController:(UIViewController *)viewController
{
    XJAlertManager *alertManager = [[XJAlertManager alloc] init];
    if ([UIAlertController class])
    {
        alertManager.alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        alertManager.viewController = viewController;
    }
    else
    {
        alertManager.alert = [UIAlertView bk_alertViewWithTitle:title message:message];
    }
    return alertManager;
}

- (void)addButtonWithTitle:(NSString *)title handler:(void (^)(void))block
{
    [self addButtonWithTitle:title style:XJAlertActionStyleDefault handler:block];
}

- (void)addCancelButtonWithTitle:(NSString *)title handler:(void (^)(void))block
{
    [self addButtonWithTitle:title style:XJAlertActionStyleCancel handler:block];
}

- (void)addButtonWithTitle:(NSString *)title style:(XJAlertActionStyle)style handler:(void (^)(void))block
{
    if ([UIAlertController class])
    {
        UIAlertActionStyle actionStyle = (NSInteger)style;
        UIAlertAction *action = [UIAlertAction actionWithTitle:title style:actionStyle handler:^(UIAlertAction *action) {
            [self handlerBlock:block];
        }];
        [self.alert addAction:action];
    }
    else
    {
        if (style == XJAlertActionStyleCancel)
        {
            [self.alert bk_setCancelButtonWithTitle:title handler:^{
                [self handlerBlock:block];
            }];
        }
        else
        {
            [self.alert bk_addButtonWithTitle:title handler:^{
                [self handlerBlock:block];
            }];
        }
    }
}

- (void)handlerBlock:(void (^)(void))block
{
    if (block) block();
    self.alert = nil;
    self.viewController = nil;
}

- (void)show
{
    if ([UIAlertController class]) [self.viewController presentViewController:self.alert animated:YES completion:nil];
    else [self.alert show];
}

@end

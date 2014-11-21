//
//  XJAlertManager.h
//  XJAlertManagerDemo
//
//  Created by jimi on 2014/11/21.
//  Copyright (c) 2014年 XJIMI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIAlertView+BlocksKit.h"

typedef NS_ENUM(NSInteger, XJAlertActionStyle) {
    XJAlertActionStyleDefault = 0,
    XJAlertActionStyleCancel,
    XJAlertActionStyleDestructive
};

@interface XJAlertManager : NSObject

+ (instancetype)alertWithTitle:(NSString *)title message:(NSString *)message viewController:(UIViewController *)viewController;

- (void)addButtonWithTitle:(NSString *)title handler:(void (^)(void))block;

- (void)addCancelButtonWithTitle:(NSString *)title handler:(void (^)(void))block;

- (void)addButtonWithTitle:(NSString *)title style:(XJAlertActionStyle)style handler:(void (^)(void))block;

- (void)show;

@end

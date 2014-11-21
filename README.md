XJAlertManager
==============
簡單使用iOS7、iOS8 Alert

安裝 pod 'BlocksKit'

XJAlertManager *alert = [XJAlertManager alertWithTitle:@"title" message:@"message" viewController:self];
[alert addButtonWithTitle:@"OK" handler:^{}];
[alert addCancelButtonWithTitle:@"CANCEL" handler:^{}];

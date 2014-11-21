XJAlertManager
==============
簡化 Alert 使用方法，將 iOS7、iOS8 收納在一起，讓您使用起來更加方便。

## Installation

安裝 pod 'BlocksKit'

### Example usage

```  objc

XJAlertManager *alert = [XJAlertManager alertWithTitle:@"title" message:@"message" viewController:self];
[alert addButtonWithTitle:@"OK" handler:^{}];
[alert addCancelButtonWithTitle:@"CANCEL" handler:^{}];
[alert show];

```



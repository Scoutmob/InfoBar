//
//  UITabBarController+JBInfoBar.h
//  InfoBar
//
//  Created by Graham Haworth on 4/16/12.
//

#import "JBInfoBar.h"
#import "UIViewController+JBInfoBar.h"

#import <UIKit/UIKit.h>


@interface UITabBarController (JBInfoBar)

- (JBInfoBar*) createDefaultInfoBarWithHeight:(NSInteger)height;

@end

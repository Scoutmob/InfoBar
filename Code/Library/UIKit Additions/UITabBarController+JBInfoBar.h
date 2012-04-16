//
//  UITabBarController+JBInfoBar.h
//  InfoBar
//
//  Created by Graham Haworth on 4/16/12.
//

#import <UIKit/UIKit.h>

#import "JBInfoBar.h"


@interface UITabBarController (JBInfoBar)

+ (void) setDefaultInfoBarTag:(NSInteger)tag;
+ (NSInteger) defaultInfoBarTag;

- (JBInfoBar*) createDefaultInfoBar;
- (JBInfoBar*) createDefaultInfoBarWithHeight:(NSInteger)height;

- (void) showInfoBarWithMessage:(NSString *)message;
- (void) hideInfoBar;
- (void) hideInfoBarWithMessage:(NSString *)message;
- (void) hideInfoBarImmediately;

@property (nonatomic, retain) JBInfoBar *infoBar;

@end

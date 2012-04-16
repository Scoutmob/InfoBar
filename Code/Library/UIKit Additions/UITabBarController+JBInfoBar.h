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

- (void) showInfoBarWithMessage:(NSString *)message;
- (void) showInfoBarWithMessage:(NSString *)message hideAfterDelay:(NSTimeInterval)delay;

- (void) hideInfoBar;
- (void) hideInfoBarWithMessage:(NSString *)message;
- (void) hideInfoBarImmediately;

// These probably should not be used unless special configuration is needed
- (JBInfoBar*) createDefaultInfoBar;
- (JBInfoBar*) createDefaultInfoBarWithHeight:(NSInteger)height;

@property (nonatomic, retain) JBInfoBar *infoBar;

@end

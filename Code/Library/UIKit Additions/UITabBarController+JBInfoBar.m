//
//  UITabBarController+JBInfoBar.m
//  InfoBar
//
//  Created by Graham Haworth on 4/16/12.
//

#import "UITabBarController+JBInfoBar.h"


#define kDefaultUndefinedInfoBarTag 2048

#define kDefaultInfoBarHeight	30


@implementation UITabBarController (JBInfoBar)


static NSInteger defaultInfoBarTag = kDefaultUndefinedInfoBarTag;

+ (void) setDefaultInfoBarTag:(NSInteger)tag {
	defaultInfoBarTag = tag;
}

+ (NSInteger) defaultInfoBarTag {
	return defaultInfoBarTag;
}

- (JBInfoBar*) infoBar {
	return (JBInfoBar*) [self.view viewWithTag:defaultInfoBarTag];
}

- (void) setInfoBar:(JBInfoBar *)infoBar {
	JBInfoBar *oldInfoBar = [self infoBar];
	if(oldInfoBar)
		[oldInfoBar removeFromSuperview];
	
	[self insertInfoBar:infoBar];
}

- (void) showInfoBarWithMessage:(NSString *)message {
	JBInfoBar *infoBar = self.infoBar;
	if(!infoBar) {
		infoBar = [self createDefaultInfoBar];
		[self insertInfoBar:infoBar];
	}
	
	[infoBar showWithMessage:message];
}

- (void) hideInfoBar {
	[self.infoBar hide];
}

- (void) hideInfoBarWithMessage:(NSString *)message {
	[self.infoBar hideWithMessage:message];
}

- (void) hideInfoBarImmediately {
	[self.infoBar hideImmediately];
}

- (void) insertInfoBar:(JBInfoBar *)infoBar {
	[self.view insertSubview:infoBar belowSubview:self.tabBar];
}

- (JBInfoBar*) createDefaultInfoBar {
	return [self createDefaultInfoBarWithHeight:kDefaultInfoBarHeight];
}

- (JBInfoBar*) createDefaultInfoBarWithHeight:(NSInteger)height {
	CGRect frame = CGRectMake(0, self.tabBar.frame.origin.y, self.tabBar.frame.size.width, height);
	JBInfoBar *infoBar = [[[JBInfoBar alloc] initWithFrame:frame] autorelease];
	infoBar.tag = [[self class] defaultInfoBarTag];
	return infoBar;
}

@end
















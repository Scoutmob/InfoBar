//
//  UIViewController+JBInfoBar.m
//  InfoBar
//
//  Created by Graham Haworth on 4/16/12.
//

#import "UIViewController+JBInfoBar.h"


#define kDefaultUndefinedInfoBarTag 2048
#define kDefaultInfoBarHeight	30


@implementation UIViewController (JBInfoBar)


#pragma mark Public Accessors

- (JBInfoBar*) infoBar {
	return (JBInfoBar*) [self.view viewWithTag:defaultInfoBarTag];
}

- (void) setInfoBar:(JBInfoBar *)infoBar {
	JBInfoBar *oldInfoBar = [self infoBar];
	if(oldInfoBar)
		[oldInfoBar removeFromSuperview];
	
	[self insertInfoBar:infoBar];
}


#pragma mark Action Methods

- (void) showInfoBarWithMessage:(NSString *)message {
	JBInfoBar *infoBar = [self getOrCreateInfoBar];
	[infoBar showWithMessage:message];
}

- (void) showInfoBarWithMessage:(NSString *)message hideAfterDelay:(NSTimeInterval)delay {
	JBInfoBar *infoBar = [self getOrCreateInfoBar];
	[infoBar showWithMessage:message hideAfterDelay:delay];
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


#pragma mark Utility Methods

- (void) insertInfoBar:(JBInfoBar *)infoBar {
	[self.view insertSubview:infoBar belowSubview:self.view];
}

- (JBInfoBar*) createDefaultInfoBar {
	return [self createDefaultInfoBarWithHeight:kDefaultInfoBarHeight];
}

- (JBInfoBar*) createDefaultInfoBarWithHeight:(NSInteger)height {
	CGRect frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, height);
	JBInfoBar *infoBar = [[[JBInfoBar alloc] initWithFrame:frame] autorelease];
	infoBar.tag = [[self class] defaultInfoBarTag];
	return infoBar;
}

- (JBInfoBar*) getOrCreateInfoBar {
	JBInfoBar *infoBar = self.infoBar;
	if(!infoBar) {
		infoBar = [self createDefaultInfoBar];
		[self insertInfoBar:infoBar];
	}
	return infoBar;
}


#pragma mark Global Configuration

static NSInteger defaultInfoBarTag = kDefaultUndefinedInfoBarTag;

+ (void) setDefaultInfoBarTag:(NSInteger)tag {
	defaultInfoBarTag = tag;
}

+ (NSInteger) defaultInfoBarTag {
	return defaultInfoBarTag;
}

@end
















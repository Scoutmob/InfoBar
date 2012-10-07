//
//  UITabBarController+JBInfoBar.m
//  InfoBar
//
//  Created by Graham Haworth on 4/16/12.
//

#import "UIViewController+JBInfoBar.h"


@implementation UITabBarController (JBInfoBar)

- (void) insertInfoBar:(JBInfoBar *)infoBar {
	[self.view insertSubview:infoBar belowSubview:self.tabBar];
}

- (JBInfoBar*) createDefaultInfoBarWithHeight:(NSInteger)height {
	CGRect frame = CGRectMake(0, self.tabBar.frame.origin.y, self.tabBar.frame.size.width, height);
	JBInfoBar *infoBar = [[[JBInfoBar alloc] initWithFrame:frame] autorelease];
	infoBar.tag = [[self class] defaultInfoBarTag];
	return infoBar;
}

@end
















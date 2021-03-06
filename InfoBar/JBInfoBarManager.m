//
//  JBInfoBarManager.m
//  InfoBar
//
//  Created by Junior on 02/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "JBInfoBarManager.h"

static JBInfoBarManager *sharedJBInfoBarManager = nil;

@implementation JBInfoBarManager

@synthesize infoBar;

#pragma mark Init

- (id)init {
    self = [super init];
    if (self) {
        infoBar = nil;
    }
    return self;
}

#pragma mark -
#pragma mark Manager

- (void)initInfoBarWithFrame:(CGRect)frame
             backgroundColor:(UIColor *)bColor
                   textColor:(UIColor *)tColor
                    textFont:(UIFont *)tFont {
    if (infoBar) {
        [infoBar removeFromSuperview];
        [infoBar release], infoBar = nil;
    }
    infoBar = [[JBInfoBar alloc] initWithFrame:frame
                               backgroundColor:bColor
                                     textColor:tColor
                                      textFont:tFont];
}

- (void)showInfoBarWithMessage:(NSString *)message {
    [infoBar showBarWithMessage:message];
}

- (void)hideInfoBarWithMessage:(NSString *)message {
    [infoBar hideBarWithMessage:message];
}

- (void)hideInfoBar {
    [infoBar hideBarWithMessage:nil];
}

- (void)hideInfoBarImmediately {
    [infoBar hideBarImmediately];
}

#pragma mark -
#pragma mark Singleton

+ (JBInfoBarManager *)sharedManager
{
    @synchronized(self) {
        if (sharedJBInfoBarManager == nil) {
            sharedJBInfoBarManager = [[super alloc] init];
        }
    }
    return sharedJBInfoBarManager;
}

+ (id)allocWithZone:(NSZone *)zone
{
    @synchronized(self) {
        if (sharedJBInfoBarManager == nil) {
            sharedJBInfoBarManager = [super allocWithZone:zone];
            return sharedJBInfoBarManager;
        }
    }
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (id)retain
{
    return self;
}

- (NSUInteger)retainCount
{
    return NSUIntegerMax;  //denotes an object that cannot be released
}

- (oneway void)release
{
    //do nothing
}

- (id)autorelease
{
    return self;
}
@end

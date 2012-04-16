//
//  JBInfoBar.h
//  InfoBar
//
//  Created by Junior B. on 20.02.11.
//  Copyright 2011 ThinkDiff.ch. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface JBInfoBar : UIView {
    CGPoint hiddenCP;
    CGPoint showCP;
    
@private
    UILabel *infoLabel;
}


- (id)initWithFrame:(CGRect)frame;

- (void)showBarWithMessage:(NSString *)message;
- (void)hideBarWithMessage:(NSString *)message;
- (void)hideBarImmediately;


@property (nonatomic, copy) NSString *message;

@property (nonatomic, readonly, assign) BOOL visible;

@property (nonatomic, assign) NSTimeInterval hideAnimationDelay;
@property (nonatomic, assign) NSTimeInterval hideAnimationDuration;
@property (nonatomic, assign) NSTimeInterval showAnimationDuration;

@property (nonatomic, retain) UIColor *textColor;
@property (nonatomic, retain) UIFont *textFont;

@property (nonatomic, readonly) UILabel *infoLabel;

@end

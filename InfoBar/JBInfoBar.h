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
    
    BOOL isHidden;
    
    UILabel *infoLabel;
}

@property (nonatomic,assign) NSTimeInterval hideAnimationDelay;
@property (nonatomic,assign) NSTimeInterval hideAnimationDuration;
@property (nonatomic,assign) NSTimeInterval showAnimationDuration;
@property (readonly,assign) BOOL isHidden;

- (id)initWithFrame:(CGRect)frame
    backgroundColor:(UIColor *)bColor
          textColor:(UIColor *)tColor
           textFont:(UIFont *)tFont;
- (void)showBarWithMessage:(NSString *)message;
- (void)hideBarWithMessage:(NSString *)message;
- (void)hideBarImmediately;
- (void)setMessage:(NSString *)message;
- (UILabel *)infoLabel;

@end

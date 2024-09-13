//
//  UIView.m
//  FoundationExtension
//
//  Created by Jeong YunWon on 13. 3. 30..
//  Copyright (c) 2013 youknowone.org. All rights reserved.
//

@import QuartzCore;
#import "UIView.h"
//#import "UIKitExtension/UIView.h"

const NSTimeInterval UIAViewAnimationDefaultDelay     = 0.15f;
const NSTimeInterval UIAViewAnimationDefaultDuration  = 0.35f;
const NSTimeInterval UIAViewSpringWithDampingDuration = 0.50f;

const CGFloat        UIAViewSpringWithDampingRatio    = 1.00f;

@implementation UIAViewHolder

@synthesize view=_view;

@end


@implementation UIView (InterfaceBuilder)

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [self init];
    UIViewController *holder = [[UIViewController alloc] initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return holder.view;
}

- (instancetype)initWithPlatformSuffixedNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSString *suffix = [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone ? @"_iPhone" : @"_iPad";
    return [self initWithNibName:[nibNameOrNil stringByAppendingString:suffix] bundle:nibBundleOrNil];
}

@end

@implementation UIView (Animation)

#if NS_BLOCKS_AVAILABLE
+ (void)animateWithDefaultDurationAnimations:(UIAViewAnimationBlock)animations {
   
//    [self animateWithDuration:UIView.animationDefaultDuration animations:animations];
    [self animateWithDuration:UIView.animationDefaultDuration animations:animations];
   
    return;
}
#endif

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated {
    if (!animated || self.hidden == hidden) {
        self.hidden = hidden;
        return;
    }

    CGFloat backupAlpha = self.alpha;
    CGFloat endAlpha;

    if (hidden) {
        endAlpha = .0;
    }
    else {
        self.alpha = .0;
        endAlpha = backupAlpha;
        self.hidden = NO;
    }

//    [[self class] animateWithDuration:UIView.animationDefaultDuration animations:^(void) {
//        self.alpha = endAlpha;
//    } completion:^(BOOL finished) {
//        if (hidden) {
//            self.alpha = backupAlpha;
//            self.hidden = YES; // value compatibility - this delayed action may be cause of unknown strange behavior.
//        }
//    }];

   [[self class] animateWithDuration:UIView.animationDefaultDuration animations:^(void) {
      
      self.alpha = endAlpha;
   }
                          completion:^(BOOL finished) {
      if (hidden) {
         self.alpha = backupAlpha;
         self.hidden = YES; // value compatibility - this delayed action may be cause of unknown strange behavior.
      }
   }];
   
   return;
}

+ (NSTimeInterval)animationDefaultDelay {
   
   return UIAViewAnimationDefaultDelay;
}

+ (NSTimeInterval)animationDefaultDuration {
   
   return UIAViewAnimationDefaultDuration;
}

+ (NSTimeInterval)springWithDampingDuration {
   
   return UIAViewSpringWithDampingDuration;
}

+ (CGFloat)springWithDampingRatio {
   
   return UIAViewSpringWithDampingRatio;
}

@end


@implementation UIView (CALayerShortcut)

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
}

- (float)shadowAlpha {
    return self.layer.shadowOpacity;
}

- (void)setShadowAlpha:(float)shadowAlpha {
    self.layer.shadowOpacity = shadowAlpha;
}

- (UIColor *)shadowColor {
    return [UIColor colorWithCGColor:self.layer.shadowColor];
}

- (void)setShadowColor:(UIColor *)shadowColor {
    self.layer.shadowColor = shadowColor.CGColor;
}

- (CGSize)shadowOffset {
    return self.layer.shadowOffset;
}

- (void)setShadowOffset:(CGSize)shadowOffset {
    self.layer.shadowOffset = shadowOffset;
}

- (CGFloat)shadowRadius {
    return self.layer.shadowRadius;
}

- (void)setShadowRadius:(CGFloat)shadowRadius {
    self.layer.shadowRadius = shadowRadius;
}

@end


@implementation UIView (UIViewGeometryShortcut)

- (CGPoint)frameEnd {
    CGRect frame = self.frame;
    CGPoint end = CGPointMake(frame.origin.x + frame.size.width, frame.origin.y + frame.size.height);
    return end;
}

@end

//
//  UIWebView.m
//  FoundationExtension
//
//  Created by Jeong YunWon on 10. 10. 18..
//  Copyright 2010 youknowone.org All rights reserved.
//

#import "UIWebView.h"

#if __UIWebView__

#if !defined(TARGET_OS_IOS) || TARGET_OS_IOS

@implementation UIWebView (Shortcuts)

- (void)loadRequestForURL:(NSURL *)URL {
    [self loadRequest:[NSURLRequest requestWithURL:URL]];
}

@end

#endif

#endif /* __UIWebView__ */

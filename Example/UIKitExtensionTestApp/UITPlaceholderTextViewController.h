//
//  UITPlaceholderTextViewController.h
//  FoundationExtension
//
//  Created by Jeong YunWon on 13. 4. 12..
//  Copyright (c) 2013 youknowone.org. All rights reserved.
//

@import UIKitExtension;

@interface UITPlaceholderTextViewController : UIViewController

@property(nonatomic, retain) IBOutlet UIAPlaceholderTextView *textView;

- (IBAction)switched:(id)sender;
- (IBAction)resign:(id)sender;

@end

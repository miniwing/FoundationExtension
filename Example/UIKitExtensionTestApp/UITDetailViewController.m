//
//  UITDetailViewController.m
//  UIKitExtensionTestApp
//
//  Created by Jeong YunWon on 12. 10. 24..
//  Copyright (c) 2012 youknowone.org. All rights reserved.
//

@import UIKitExtension;

#import "UITDetailViewController.h"

@interface UITDetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;

@end

@implementation UITDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"0"];
    self.imageView.centerImage = image;
    self.imageView.topImage = image;
    self.imageView.bottomImage = image;
    self.imageView.leftImage = image;
    self.imageView.rightImage = image;
    self.imageView.topLeftImage = [UIImage imageNamed:@"1"];
    self.imageView.topRightImage = [UIImage imageNamed:@"2"];
    self.imageView.bottomLeftImage = [UIImage imageNamed:@"3"];
    self.imageView.bottomRightImage = [UIImage imageNamed:@"4"];

    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(.0, .0, 100.0, 100.0) cornerRadius:10.0];
    self.drawView.image = [path imageWithStrokeColor:[UIColor greenColor]];

    CGRect frame = [UIApplication sharedApplication].statusBarFrameForCurrentOrientation;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}

@end

//
//  ViewController.m
//  AutoLayoutExample
//
//  Created by Lupulescu Alexandru-Mihai on 06/05/16.
//  Copyright © 2016 Lupulescu Alexandru-Mihai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSLayoutConstraint *topConstraint;
@property (nonatomic, strong) UILabel *subtitleLabelCentered;
@property (nonatomic, strong) UILabel *anchorsLabelCentered;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *firstLabelTopConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // label using VLF
#warning - type "demo_step_1"
    UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    subtitleLabel.text = @"Left aligned label using constraints and code";
    subtitleLabel.textColor = [UIColor greenColor];
    subtitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:subtitleLabel];
    
    
    
    
    NSDictionary *viewsDictionary = @{@"subtitle" : subtitleLabel};
    NSArray *vlfHorizontalConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-230-[subtitle]"
                                                                               options:0
                                                                               metrics:nil
                                                                                 views:viewsDictionary];
    [NSLayoutConstraint activateConstraints:vlfHorizontalConstraint];
    NSArray *vlfVerticalConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-160-[subtitle]"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:viewsDictionary];
    [NSLayoutConstraint activateConstraints:vlfVerticalConstraint];
    
  // label using NSLayoutConstraint
#warning - type "demo_step_2"
    self.subtitleLabelCentered = [[UILabel alloc] initWithFrame:CGRectZero];
    self.subtitleLabelCentered.text = @"Centered Label using classic NSLayoutConstraints";
    self.subtitleLabelCentered.textColor = [UIColor redColor];
    self.subtitleLabelCentered.backgroundColor = [UIColor grayColor];
    self.subtitleLabelCentered.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.subtitleLabelCentered];
    
    
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.subtitleLabelCentered
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:10]];
    self.topConstraint = [NSLayoutConstraint constraintWithItem:self.subtitleLabelCentered
                                                      attribute:NSLayoutAttributeTop
                                                      relatedBy:NSLayoutRelationEqual
                                                         toItem:subtitleLabel
                                                      attribute:NSLayoutAttributeBottom
                                                     multiplier:1.0
                                                       constant:0];
    self.topConstraint.priority = 600.0f;
    [self.view addConstraint:self.topConstraint];

  // label using anchors
#warning - type "demo_step_3"
    
    self.anchorsLabelCentered = [[UILabel alloc] initWithFrame:CGRectZero];
    self.anchorsLabelCentered.text = @"Centered Label using anchors";
    self.anchorsLabelCentered.textColor = [UIColor grayColor];
    self.anchorsLabelCentered.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.anchorsLabelCentered];
    NSLayoutConstraint *centerAnchorConstraint = [self.anchorsLabelCentered.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor
                                                                                                         constant:0.0];
    centerAnchorConstraint.active = YES;
    NSLayoutConstraint *topAnchorConstraint = [self.anchorsLabelCentered.topAnchor constraintEqualToAnchor:self.subtitleLabelCentered.bottomAnchor
                                                                                                  constant:30.0];
    topAnchorConstraint.active = YES;

    /// comment for aditional commit
    /// comment for the second commit
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];

  // Auto layout simple animation
#warning - type "demo_step_4"

  // Keyframe animation example
#warning - type "demo_step_5"

}

@end

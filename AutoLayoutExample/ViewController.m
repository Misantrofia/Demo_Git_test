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
    subtitleLabel.textColor = [UIColor redColor];
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

  // label using anchors
#warning - type "demo_step_3"

}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];

  // Auto layout simple animation
#warning - type "demo_step_4"

  // Keyframe animation example
#warning - type "demo_step_5"

}

@end

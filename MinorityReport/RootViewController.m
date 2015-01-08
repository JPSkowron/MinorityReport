//
//  ViewController.m
//  MinorityReport
//
//  Created by JP Skowron on 1/8/15.
//  Copyright (c) 2015 JP Skowron. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UILabel *theFutureLabel;
@property (weak, nonatomic) IBOutlet UILabel *thePreCpgsLabel;
@property CGPoint originalCenter;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    self.originalCenter = self.theFutureLabel.center;


}
- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {
    CGPoint point = [sender locationInView: self.view];
    self.theFutureLabel.center = point;
    NSLog(@"%f", point.x);
    NSLog(@"%f", point.y);

    if (CGRectContainsPoint(self.thePreCpgsLabel.frame, point)) {
        self.theFutureLabel.text = @"A ficticious and incriminating future";
        [self.theFutureLabel sizeToFit];
    }
    if (sender.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration: 1.f animations:^{
            self.theFutureLabel.center = self.originalCenter;
        }];
    }
}


@end

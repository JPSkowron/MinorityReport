//
//  ViewController.m
//  MinorityReport
//
//  Created by JP Skowron on 1/8/15.
//  Copyright (c) 2015 JP Skowron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *theFutureLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];


}
- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {
    CGPoint point = [sender locationInView: self.view];
    self.theFutureLabel.center = point;
    NSLog(@"%f", point.x);
    NSLog(@"%f", point.y);
}


@end

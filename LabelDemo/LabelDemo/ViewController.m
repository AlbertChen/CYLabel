//
//  ViewController.m
//  LabelDemo
//
//  Created by Chen Yiliang on 4/21/17.
//  Copyright © 2017  Chen Yiliang. All rights reserved.
//

#import "ViewController.h"
#import "CYLabel.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet CYLabel *label1;
@property (nonatomic, weak) IBOutlet CYLabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIEdgeInsets marginInserts = UIEdgeInsetsMake(2.0, 0.0, 2.0, 0.0);
    CGFloat height = [CYLabel heightWithFont:self.label1.font marginInserts:marginInserts];
    marginInserts.left = marginInserts.right = height / 2;
    self.label1.cornerRadius = height / 2;
    self.label1.marginInserts = marginInserts;
    self.label1.text = @"Labelyyy";

    self.label2.cornerRadius = 5.0;
    self.label2.marginInserts = UIEdgeInsetsMake(1.0, 5.0, 1.0, 5.0);
    self.label2.text = @"Label2yyy";
}

@end

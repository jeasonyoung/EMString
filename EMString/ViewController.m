//
//  ViewController.m
//  EMString
//
//  Created by Tanguy Aladenise on 2014-11-27.
//  Copyright (c) 2014 Tanguy Aladenise. All rights reserved.
//

#import "ViewController.h"
#import "NSString+EMAdditions.h"
#import "EMStringStylingConfiguration.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [EMStringStylingConfiguration sharedInstance].defaultColor = [UIColor yellowColor];
    [EMStringStylingConfiguration sharedInstance].h1Color = [UIColor redColor];
    [EMStringStylingConfiguration sharedInstance].h1DisplayBlock = YES;


//    [EMStringStylingConfiguration sharedInstance].strongFont = [UIFont boldSystemFontOfSize:20];
    EMStylingClass *aStylingClass = [[EMStylingClass alloc] init];
    aStylingClass.markup = @"<cell>";
    [aStylingClass setFont:[UIFont systemFontOfSize:20]];
    [aStylingClass setColor:[UIColor redColor]];
    [[EMStringStylingConfiguration sharedInstance] addNewStylingClass:aStylingClass];
    
    aStylingClass = [[EMStylingClass alloc] init];
    aStylingClass.markup = @"<custom2>";
    aStylingClass.attributes = @{ NSFontAttributeName : [UIFont systemFontOfSize:20], NSForegroundColorAttributeName : [UIColor yellowColor] };
    [[EMStringStylingConfiguration sharedInstance] addNewStylingClass:aStylingClass];

    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) / 2)];
    label.numberOfLines = 0;
    label.attributedText = @"<h1>EMString</h1><p>EMString stands for <em><strong>E</strong>asy <strong>M</strong>arkup string</em>".attributedString;
    [self.view addSubview:label];
    
//    [EMStringStylingConfiguration sharedInstance].strongFont = [UIFont boldSystemFontOfSize:90];
    
//    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.frame) / 2, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) / 2)];
//    label2.numberOfLines = 0;
//    label2.attributedText = @"<p>Je suis une <strong>EMString</strong></p> <p>That can make <u>every</u> string easily <em>styled</em>.</p>".attributedString;
//    [self.view addSubview:label2];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

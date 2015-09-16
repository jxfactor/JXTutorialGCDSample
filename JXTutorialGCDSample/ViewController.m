//
//  ViewController.m
//  JXTutorialGCDSample
//
//  Created by 汪骏祥 on 9/16/15.
//  Copyright (c) 2015 junxiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Click:(UIButton *)sender {
    mConcurrentQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(mConcurrentQueue, ^{ tFunc(self->_lblOne, @"AC Milan"); });
    dispatch_async(mConcurrentQueue, ^{ tFunc(self->_lblTwo, @"Barcelona"); });
    
    NSLog(@"All Done");
}

void (^tFunc)(UILabel *, NSString *) = ^(UILabel *lbl, NSString *title) {
    NSLog(@"AC Milan Go to Sleep ... wait for 2 seconds");
    sleep(2);
    NSLog(@"AC Milan Waking up ... ");
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [lbl setText:title];
        NSLog(@"%@ Done!", title);
    });
};

@end

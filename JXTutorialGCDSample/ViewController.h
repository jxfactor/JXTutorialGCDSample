//
//  ViewController.h
//  JXTutorialGCDSample
//
//  Created by 汪骏祥 on 9/16/15.
//  Copyright (c) 2015 junxiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    dispatch_queue_t mConcurrentQueue;
}


@property (weak, nonatomic) IBOutlet UILabel *lblOne;
@property (weak, nonatomic) IBOutlet UILabel *lblTwo;
@property (weak, nonatomic) IBOutlet UIButton *btnGo;

- (IBAction)Click:(UIButton *)sender;

@end


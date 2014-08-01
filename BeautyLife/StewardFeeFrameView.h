//
//  StewardFeeFrameView.h
//  BeautyLife
//
//  Created by Seven on 14-7-31.
//  Copyright (c) 2014年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterView.h"
#import "UserInfoView.h"

@interface StewardFeeFrameView : UIViewController

@property (strong, nonatomic) IBOutlet UIView *mainView;

@property (strong, nonatomic) RegisterView * msgView;
@property (strong, nonatomic) UserInfoView * activesView;
@property (strong, nonatomic) IBOutlet UIButton *stewardFeeBtn;
@property (strong, nonatomic) IBOutlet UIButton *parkFeeBtn;

- (IBAction)stewardFeeAction:(id)sender;
- (IBAction)parkFeeAction:(id)sender;

@end

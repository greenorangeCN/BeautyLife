//
//  StewardPageView.h
//  BeautyLife
//
//  Created by Seven on 14-7-29.
//  Copyright (c) 2014年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StewardFeeFrameView.h"

@interface StewardPageView : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIView *menuBg;
@property (strong, nonatomic) IBOutlet UILabel *telBg;

- (IBAction)stewardFeeAction:(id)sender;

@end
//
//  StewardFeeFrameView.m
//  BeautyLife
//
//  Created by Seven on 14-7-31.
//  Copyright (c) 2014年 Seven. All rights reserved.
//

#import "StewardFeeFrameView.h"

@interface StewardFeeFrameView ()

@end

@implementation StewardFeeFrameView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 44)];
        titleLabel.font = [UIFont boldSystemFontOfSize:18];
        titleLabel.text = @"美世界 美生活";
        titleLabel.backgroundColor = [UIColor clearColor];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment = UITextAlignmentCenter;
        self.navigationItem.titleView = titleLabel;
        
        UIButton *lBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 25, 25)];
        [lBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [lBtn setImage:[UIImage imageNamed:@"backBtn"] forState:UIControlStateNormal];
        UIBarButtonItem *btnBack = [[UIBarButtonItem alloc]initWithCustomView:lBtn];
        self.navigationItem.leftBarButtonItem = btnBack;
    }
    return self;
}

- (void)backAction
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    //下属控件初始化
    self.activesView = [[UserInfoView alloc] init];
    self.msgView = [[RegisterView alloc] init];
    self.msgView.view.hidden = YES;
    [self addChildViewController:self.activesView];
    [self addChildViewController:self.msgView];
    [self.mainView addSubview:self.activesView.view];
    [self.mainView addSubview:self.msgView.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = NO;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.msgView = nil;
    self.activesView = nil;
}

- (IBAction)stewardFeeAction:(id)sender {
    [self.stewardFeeBtn setTitleColor:[UIColor colorWithRed:255.0/255.0 green:127.0/255.0 blue:0.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [self.parkFeeBtn setTitleColor:[UIColor scrollViewTexturedBackgroundColor] forState:UIControlStateNormal];
    self.activesView.view.hidden = NO;
    self.msgView.view.hidden = YES;
}

- (IBAction)parkFeeAction:(id)sender {
    [self.parkFeeBtn setTitleColor:[UIColor colorWithRed:255.0/255.0 green:127.0/255.0 blue:0.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [self.stewardFeeBtn setTitleColor:[UIColor scrollViewTexturedBackgroundColor] forState:UIControlStateNormal];
    self.activesView.view.hidden = YES;
    self.msgView.view.hidden = NO;
}
@end

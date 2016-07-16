//
//  AboutViewController.m
//  RealmDemo
//
//  Created by Mac on 16/7/16.
//  Copyright © 2016年 com.luohaifang. All rights reserved.
//

#import "AboutViewController.h"
#import "EAIntroViewController.h"

@interface AboutViewController ()<EAIntroViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *versionLabel;

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"关于棒棒";
    //添加当前版本号信息
    NSString *currentVerson = [NSString stringWithFormat:@"v%@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]];
    if([KBSSDKAPIDomain rangeOfString:@"test"].location != NSNotFound) {
        currentVerson = [currentVerson stringByAppendingString:@" 测试环境"];
    }
    self.versionLabel.text = currentVerson;
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
- (IBAction)ealntroClicked:(id)sender {
    EAIntroViewController *view = [EAIntroViewController new];
    view.delegate = self;
    [self presentViewController:view animated:NO completion:nil];
}
#pragma mark --
#pragma mark -- EAIntroViewDelegate
- (void)eAIntroViewDidFinish:(EAIntroViewController *)eAIntro {
    [eAIntro dismissViewControllerAnimated:NO completion:nil];
}
@end
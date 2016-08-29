//
//  MyAppView.h
//  BangBang
//
//  Created by lottak_mac2 on 16/8/29.
//  Copyright © 2016年 Lottak. All rights reserved.
//

#import <UIKit/UIKit.h>
@class UserApp;
@class LocalUserApp;
@protocol MyAppDelegate <NSObject>

- (void)MyAppViewAddApp;
- (void)MyAppViewDeleteApp:(UserApp*)userApp;
- (void)MyAppLocalAppSelect:(LocalUserApp*)localUserApp;
- (void)MyAppNetAppSelect:(UserApp*)userApp;

@end

@interface MyAppView : UIView

@property (nonatomic, assign) BOOL isEditStatue;//是不是编辑状态
@property (nonatomic, weak) id<MyAppDelegate> delegate;

- (void)reloadCollentionView;//重新加载界面

@end

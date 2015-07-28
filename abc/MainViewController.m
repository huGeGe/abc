
	//
//  MainViewController.m
//  abc
//
//  Created by at on 14-12-14.
//  Copyright (c) 2014年 a. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[self lianxi1];
	
	
}

-(void)lianxi1
{
		//	[[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleLightContent];
		//	int a = 5;
		//	NSLog(@"%03d",a);
	
	
	
	
	int a = 5;
	int b = 9;
	int m = b < a;
	
		//	double a = 6;
		//	int m = sizeof(a);
	NSLog(@"%d",m);
	
	
	UILabel * label = [[UILabel alloc]init];
	label.text = @"绿卡管理会计干不了小会计法看到了经理刚看到结果亏了六世达赖叫分了开始计费时间过来考试攻杀剑法了；可能是大刚德拉克的赶快来的快感开了个店开会都发生过款手链；的给你的看房间是的手链";
		//	CGSize labSize = [label.text sizeWithFont:[UIFont systemFontOfSize:15] constrainedToSize:CGSizeMake(200, MAXFLOAT)];//195*125
	
	CGRect rect = [label.text boundingRectWithSize:CGSizeMake(200, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:15],NSFontAttributeName, nil] context:nil];
		//	NSLog(@"%f",rect.size.width);
		//	NSLog(@"%f",rect.size.height);
	
	
	CGRect statusBarRect = [[UIApplication sharedApplication]statusBarFrame];//状态栏的frame(0,0,320,20)
	CGRect navigationBarRect = self.navigationController.navigationBar.bounds;//导航栏的frame(0,0,320,44)
																			  //	NSLog(@"%f",statusBarRect.size.height);
																			  //	NSLog(@"%f",navigationBarRect.size.height);
	
		//http://news.baidu.com/z/resource/r/image/2014-12-13/f63b9555d315fd25cb5564fd33c803db.jpg
	
	UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 100, 200, 200)];
	[self.view addSubview:imageView];
	
		//	NSData * imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://news.baidu.com/z/resource/r/image/2014-12-13/f63b9555d315fd25cb5564fd33c803db.jpg"]];
	NSData * imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://180.96.21.220:9998//userfiles/image/%E5%9F%BA%E9%87%91/%E5%A4%962.jpg"]];
		//	NSLog(@"%@",imageData);
	imageView.image = [UIImage imageWithData:imageData];
	
	dispatch_async(dispatch_get_main_queue(), ^{
		
		
	});
	
		//获取NSUserDefaults引用
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	NSString * str = [NSString stringWithFormat:@"你好!"];
		//保存数据
	[userDefaults setObject:str forKey:@"userName"];
	[userDefaults synchronize];
	
	
	[self getUserName];
}

-(void)getUserName
{
	NSUserDefaults * user = [NSUserDefaults standardUserDefaults];
	//读取数据
	NSString * string = [user objectForKey:@"userName"];
//	NSLog(@"%@",string);
	
//	int a  = 25;
//	int m = a%10;
//	NSLog(@"%d",m);
}
@end

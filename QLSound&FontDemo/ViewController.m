//
//  ViewController.m
//  QLSound&FontDemo
//
//  Created by qiu on 2017/5/5.
//  Copyright © 2017年 QiuFairy. All rights reserved.
//

#import "ViewController.h"
#import "SoundViewController.h"
#import "FontViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Sound&Font";
    
    //此demo是为了输出System Sound && UIFont库
    
    UIButton *soundBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 44)];
    [soundBtn setTitle:@"System Sound" forState:UIControlStateNormal];
    [soundBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [soundBtn addTarget:self action:@selector(clickSoundAndFontBtn:) forControlEvents:UIControlEventTouchUpInside];
    soundBtn.tag = 1000;
    [self.view addSubview:soundBtn];
    
    UIButton *FontBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 44)];
    [FontBtn setTitle:@"System Font" forState:UIControlStateNormal];
    [FontBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [FontBtn addTarget:self action:@selector(clickSoundAndFontBtn:) forControlEvents:UIControlEventTouchUpInside];
    FontBtn.tag = 1001;
    [self.view addSubview:FontBtn];
}

-(void)clickSoundAndFontBtn:(UIButton *)sender{
    if (sender.tag ==1000) {
        //System Sound
        SoundViewController *soundVC = [[SoundViewController alloc]init];
        [self.navigationController pushViewController:soundVC animated:YES];
    }else{
        FontViewController *fontVC = [[FontViewController alloc]init];
        [self.navigationController pushViewController:fontVC animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

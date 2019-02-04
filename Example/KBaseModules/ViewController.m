//
//  ViewController.m
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "ViewController.h"
#import "KBaseModules.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [KLoad defaultLoading];
    self.navigationItem.title = @"测试";
    // Do any additional setup after loading the view, typically from a nib.
}


@end

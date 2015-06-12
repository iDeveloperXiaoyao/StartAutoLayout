//
//  ViewController.m
//  StartAutoLayout
//
//  Created by songjian on 15/6/10.
//  Copyright (c) 2015年 songjian. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

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

#pragma mark - UITableViewDelegate and DataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * cellIdentifier = @"customCell";
    CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil){
        cell = [CustomTableViewCell getCell];
    }
    UIImage * image = nil;
    NSString * content = nil;
    if(indexPath.row % 2 == 0){
        image = [UIImage imageNamed:@"test"];
        content = @"少量文本";
    }else{
        image = nil;
        content = @"AutoLayout是一种基于约束的，描述性的布局系统。 Auto Layout Is a Constraint-Based, Descriptive Layout System.";
    }
    [cell configViewWithImage:image text:content];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

@end

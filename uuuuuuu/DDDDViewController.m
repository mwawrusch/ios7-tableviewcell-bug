//
//  DDDDViewController.m
//  uuuuuuu
//
//  Created by Martin Wawrusch on 9/12/13.
//  Copyright (c) 2013 Modeista Inc. All rights reserved.
//

#import "DDDDViewController.h"
#import "TestViewCell.h"

@interface DDDDViewController ()

@end

@implementation DDDDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.testTableView registerNib:[UINib nibWithNibName:@"TestViewCell" bundle:nil] forCellReuseIdentifier: @"TestViewCell"];
    self.testTableView.delegate = self;
    self.testTableView.dataSource =self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    TestViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"TestViewCell" forIndexPath:indexPath];

    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    //cell.delegationListener =self;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}



@end

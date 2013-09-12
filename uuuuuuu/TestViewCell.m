//
//  TestViewCell.m
//  uuuuuuu
//
//  Created by Martin Wawrusch on 9/12/13.
//  Copyright (c) 2013 Modeista Inc. All rights reserved.
//

#import "TestViewCell.h"

@implementation TestViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)testMe:(id)sender {
    [[UIAlertView alloc] initWithTitle: @"YES" message:@"What" delegate:self cancelButtonTitle:@"Cancel"  otherButtonTitles: nil];
}
@end

//
//  JWCCollectionViewCellReminder.h
//  Remember It
//
//  Created by Jeff Schwab on 3/2/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWCCollectionViewCellReminder : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UITextField *textFieldHours;
@property (weak, nonatomic) IBOutlet UITextField *textFieldMinutes;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSeconds;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end

//
//  JWCViewController.m
//  Remember It
//
//  Created by Jeff Schwab on 3/1/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import "JWCViewController.h"
#import "JWCCollectionViewCellReminder.h"

@interface JWCViewController ()
<UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UITextFieldDelegate>

{
    UITextField *_selectedTextField;
}

@property (weak, nonatomic) UIStepper *stepperTime;

@end

@implementation JWCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"iPhone5_36@2x"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions
- (IBAction)pressedRememberIt:(id)sender
{
    
}

- (IBAction)pressedContacts:(id)sender
{
    
}

- (IBAction)valueChangedStepper:(UIStepper *)timeStepper
{
    switch (_selectedTextField.tag) {
        case TAG_HOURS:
            _selectedTextField.text = [NSString stringWithFormat:@"%ihrs", (int)timeStepper.value];
            break;
        case TAG_MINUTES:
            _selectedTextField.text = [NSString stringWithFormat:@"%imins", (int)timeStepper.value];
            break;
        case TAG_SECONDS:
            _selectedTextField.text = [NSString stringWithFormat:@"%isecs", (int)timeStepper.value];
            break;
        default:
            
            break;
    }
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    _selectedTextField = textField;
    self.stepperTime.value = _selectedTextField.text.intValue;
    switch (_selectedTextField.tag) {
        case TAG_HOURS:
            self.stepperTime.minimumValue = 0;
            self.stepperTime.maximumValue = 12;
            break;
        case TAG_MINUTES:
            self.stepperTime.minimumValue = 0;
            self.stepperTime.maximumValue = 59;
            break;
        case TAG_SECONDS:
            self.stepperTime.minimumValue = 0;
            self.stepperTime.maximumValue = 59;
            break;
        default:
            break;
    }
    return YES;
}


#pragma mark - UICollectionViewDelegate
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize currentCellSize;
    
    switch (indexPath.row) {
        case 0:
            currentCellSize = CGSizeMake(300, 75);
            break;
        case 1:
            currentCellSize = CGSizeMake(300, 110);
            break;
        case 2:
            currentCellSize = CGSizeMake(280, 50);
            break;
        case 3:
            currentCellSize = CGSizeMake(295, 60);
            break;
        case 4:
            currentCellSize = CGSizeMake(200, 50);
            break;
        default:
            break;
    }
    return currentCellSize;
}

@end

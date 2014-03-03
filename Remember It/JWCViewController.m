//
//  JWCViewController.m
//  Remember It
//
//  Created by Jeff Schwab on 3/1/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import "JWCViewController.h"

@interface JWCViewController ()
<UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UITextFieldDelegate>

{
    UITextField *_selectedTextField;
}

@end

@implementation JWCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"BlueGradient"]];
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
    _selectedTextField.text = [NSString stringWithFormat:@"%i", (int)timeStepper.value];
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    _selectedTextField = textField;
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

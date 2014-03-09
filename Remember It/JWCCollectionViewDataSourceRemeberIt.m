//
//  JWCCollectionViewDataSourceRemeberIt.m
//  Remember It
//
//  Created by Jeff Schwab on 3/2/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import "JWCCollectionViewDataSourceRemeberIt.h"
#import "JWCCollectionViewCellReminder.h"

@implementation JWCCollectionViewDataSourceRemeberIt 

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *currentCell;
    
    switch (indexPath.row) {
        case 0:
            currentCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Description Cell" forIndexPath:indexPath];
            break;
        case 1:
            currentCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Reminder Cell" forIndexPath:indexPath];
            break;
        case 2:
            currentCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Options Cell" forIndexPath:indexPath];
            break;
        case 3:
            currentCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Contacts Cell" forIndexPath:indexPath];
            break;
        case 4:
            currentCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Remember It Cell" forIndexPath:indexPath];
            break;
        default:
            break;
    }
    return currentCell;
}

@end

//
//  VideosTableViewCell.h
//  ObjectiveC_Code
//
//  Created by Mallikarjun on 08/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VideoCollectionViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface VideosTableViewCell : UITableViewCell
{
    NSArray *titleArray;
    NSArray *timeLabel;
}

@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectionView;

@end

NS_ASSUME_NONNULL_END

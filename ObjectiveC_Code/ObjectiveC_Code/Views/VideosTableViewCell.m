//
//  VideosTableViewCell.m
//  ObjectiveC_Code
//
//  Created by Mallikarjun on 08/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

#import "VideosTableViewCell.h"
#import "VideoCollectionViewCell.h"


@implementation VideosTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
     titleArray = [NSArray arrayWithObjects: @"The Seven Samurai 2007",@"Airplane 1998",@"Pan's Labyrinth 2001",@"The Deer Hunter 1992",@"Up 2019", nil];
     timeLabel = [NSArray arrayWithObjects: @"1 Year ago \u2022 5313 Play",@"1 Week ago \u2022 9828 Play",@"2 Days ago \u2022 63 Play",@"6 Months ago \u2022 34329 Play",@"2 weeks ago \u2022 831 Play", nil];
    
    _mainCollectionView.delegate = self;
    _mainCollectionView.dataSource = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [titleArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *img = [titleArray objectAtIndex:indexPath.row];
    NSString *title = [titleArray objectAtIndex:indexPath.row];
    NSString *time = [timeLabel objectAtIndex:indexPath.row];
    
    VideoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"VideoCollectionViewCell" forIndexPath:indexPath];
    
    [cell image:img title:title time:time];
    
    return cell;
}

@end

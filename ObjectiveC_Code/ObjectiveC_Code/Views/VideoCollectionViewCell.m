//
//  VideoCollectionViewCell.m
//  ObjectiveC_Code
//
//  Created by Mallikarjun on 08/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

#import "VideoCollectionViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation VideoCollectionViewCell

- (void) image:(NSString*)image title:(NSString*)title  time:(NSString*)time{
    
  
    self.videoImg.layer.cornerRadius = 5;
    self.videoImg.layer.masksToBounds = YES;
    
    self.videoImg.image = [UIImage imageNamed:image];
    self.videoTitleLabel.text = title;
    self.videoTimeLabel.text = time;
}


@end

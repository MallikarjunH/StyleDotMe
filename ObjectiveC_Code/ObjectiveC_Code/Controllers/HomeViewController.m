//
//  HomeViewController.m
//  ObjectiveC_Code
//
//  Created by Mallikarjun on 08/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

#import "HomeViewController.h"
#import "CommentsTableViewCell.h"
#import "VideosTableViewCell.h"
#import "TitleHeaderTableViewCell.h"

@interface HomeViewController ()
{
    NSArray *commentsArray;
    NSArray *headerTitleArray;

}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   commentsArray =  [NSArray arrayWithObjects: @"With SmartTokens you can get your token on iOS and Android in real time without the need to build your own ethereum wallet.", @"Visit TokenScript Documentation or see TokenScript Examples", @"Run natively inside the app and come with signed code to prevent tampering or phishing", @" They are traditional fungible and non fungible tokens that are extended with business logic",@"We are committed to connecting businesses and consumers with the new digital economic infrastructure", nil];
    
    headerTitleArray = [NSArray arrayWithObjects:@"Video", @"Review",nil];

    
    _mesageButton.layer.cornerRadius = 25;
    _mesageButton.layer.masksToBounds = YES;
 
    [self.mainTableView reloadData];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return  2;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if(section == 0){
        
        return 1;
    }
    else{
        return 5;
    }
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    if(indexPath.section == 0) {
        
        VideosTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VideosTableViewCell"];
        
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"VideosTableViewCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
       // cell.commentLabel.text = [commentsArray objectAtIndex:indexPath.row];
        return cell;
        
    }else{
        
        CommentsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CommentsTableViewCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CommentsTableViewCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        cell.commentLabel.text = [commentsArray objectAtIndex:indexPath.row];
        return cell;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    TitleHeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TitleHeaderTableViewCell"];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TitleHeaderTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if(section == 0) {
        
        cell.titleLabel.text = headerTitleArray[section];
        cell.titleLabel.text = [NSString stringWithFormat:@"%@ \u2022 9", headerTitleArray[section]];
        cell.editLabel.hidden = TRUE;
    }else{
        cell.titleLabel.text = headerTitleArray[section];
        cell.editLabel.hidden = FALSE;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 65;
}



@end

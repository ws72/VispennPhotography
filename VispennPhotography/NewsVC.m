//
//  NewsVC.m
//  VispennPhotography
//
//  Created by penn on 6/5/13.
//  Copyright (c) 2013 penn. All rights reserved.
//

#import "NewsVC.h"
#import "NewsDetailVC.h"
@interface NewsVC ()

@end

@implementation NewsVC

NSArray *tableData;

NSArray *newsDetail;

NSArray *newsImages;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
//        self.title = NSLocalizedString(@"NEWS", @"News");
//        self.tabBarItem.image = [UIImage imageNamed:@"newsIcon.png"];
        //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_iPhone.png"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // news title
    tableData = [NSArray arrayWithObjects:
                 @"LEE HOM Melbourn Concerts",
                 @"Sharing on facebook got 10% OFF",
                 @"New studio now available",
                 @"Penn wins AIPP 2013 Award",
                 @"Sponsorship of Miss Chinese 2013",
                 nil];
    // news detail
    newsDetail = [NSArray arrayWithObjects:
                 @"April 9 2013, LEE HOM Melbourne Concerts hosted by Chinatown Cinema at Melbourne Exsibition center, VISPENN photography is the exclusive photography sevice provider.",
                 @"From Apr 2013 - Jyly 2013, Everyone who share our work on Facebook can get 10% OFF.",
                 @"New studio now available",
                 @"Penn wins AIPP 2013 Award",
                 @"Sponsorship of Miss Chinese 2013",
                 nil];
    // news image
    newsImages = [NSArray arrayWithObjects:
                 @"newsImage1.png",
                  @"newsImage2.png",
                  @"newsImageDef.png",
                  @"newsImageDef.png",
                  @"newsImageDef.png",
                 nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section{
    return [tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTabledentifier=@"SimpleTableItem";
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:simpleTabledentifier];
    if(cell ==nil){
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTabledentifier];
        UIFont *font = [UIFont fontWithName:@"Helvetica-Light" size:16];//set font of news title for each cell
        cell.textLabel.font = font;
    }
    cell.textLabel.text =[tableData objectAtIndex:indexPath.row];// set new title for each cell
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //create new details view controller, when selected row.
    NewsDetailVC * newsDetailVC = [[NewsDetailVC alloc] initWithNibName:@"NewsDetailVC" bundle:nil];
    //set news title
    newsDetailVC.newsTitle = [tableData objectAtIndex:indexPath.row];
    //set news details
    newsDetailVC.newsdetail= [newsDetail objectAtIndex:indexPath.row];
    //set news image
    newsDetailVC.imagesrc= [newsImages objectAtIndex:indexPath.row];

    [self presentViewController:newsDetailVC animated:YES completion:NULL];
    
}

@end

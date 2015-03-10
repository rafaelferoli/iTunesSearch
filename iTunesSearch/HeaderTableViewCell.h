//
//  HeaderTableViewCell.h
//  iTunesSearch
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 3/10/15.
//  Copyright (c) 2015 joaquim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderTableViewCell : UITableViewCell <UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

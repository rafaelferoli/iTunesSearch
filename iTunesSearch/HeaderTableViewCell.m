//
//  HeaderTableViewCell.m
//  iTunesSearch
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 3/10/15.
//  Copyright (c) 2015 joaquim. All rights reserved.
//

#import "HeaderTableViewCell.h"
#import "TableViewController.h"
#import "iTunesManager.h"

@implementation HeaderTableViewCell

- (void)awakeFromNib {
    [_searchBar setDelegate:self];
    _searchBar.placeholder = NSLocalizedString(@"Pesquisar", @"");
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    iTunesManager *itunes = [iTunesManager sharedInstance];
    TableViewController *tableView = (TableViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    tableView.midias = [itunes buscarMidias:[_searchBar.text stringByReplacingOccurrencesOfString:@" " withString:@"-"]];
    [tableView.tableview reloadData];
}

@end

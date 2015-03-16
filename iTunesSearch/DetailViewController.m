//
//  DetailViewController.m
//  iTunesSearch
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 3/16/15.
//  Copyright (c) 2015 joaquim. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipoLabel;
@property (weak, nonatomic) IBOutlet UILabel *localLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistaLabel;
@property (weak, nonatomic) IBOutlet UILabel *midiaLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameLabel.text = _filme.nome;
    _tipoLabel.text = _filme.genero;
    _localLabel.text = _filme.pais;
    _artistaLabel.text = _filme.artista;
    _midiaLabel.text = @"Filme";
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

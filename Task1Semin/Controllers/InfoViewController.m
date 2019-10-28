//
//  InfoViewController.m
//  Task1Semin
//
//  Created by Сергей Семин on 29.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import "InfoViewController.h"
#import "Goods.h"

#import "EsotericsBook.h"
#import "ProgrammingBook.h"
#import "CookingBook.h"

#import "AudioDisk.h"
#import "VideoDisk.h"
#import "SoftwareDisk.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.selectedItem) {
        
        self.imageView.image = self.selectedItem.image;
        self.barcodeLabel.text = [@"Штрихкод: " stringByAppendingString:self.selectedItem.barcode];
        self.priceLabel.text = [NSString stringWithFormat:@"Цена: %1.2f$", self.selectedItem.price];
        self.nameLabel.text = self.selectedItem.name;
        
        
        if ([self.selectedItem isKindOfClass:[ProgrammingBook class]]){
            
            ProgrammingBook* book = (ProgrammingBook*)self.selectedItem;
            self.detailLabel.text = [NSString stringWithFormat:@"О товаре:\nКоличество страниц: %ld\nЯзык программирования: %@", (long)book.countOfPages, book.language];
            
        } else if ([self.selectedItem isKindOfClass:[CookingBook class]]){
            
            CookingBook* book = (CookingBook*)self.selectedItem;
            self.detailLabel.text = [NSString stringWithFormat:@"О товаре:\nКоличество страниц: %ld\nИнгредиент: %@", (long)book.countOfPages, book.ingredient];
            
            
        } else if ([self.selectedItem isKindOfClass:[EsotericsBook class]]){
            
            EsotericsBook* book = (EsotericsBook*)self.selectedItem;
            self.detailLabel.text = [NSString stringWithFormat:@"О товаре:\nКоличество страниц: %ld\nМинимальный возраст: %ld", (long)book.countOfPages, (long)book.minAge];
            
        } else if ([self.selectedItem isKindOfClass:[Disk class]]){
            
            Disk* disk = (Disk*)self.selectedItem;
            self.detailLabel.text = [NSString stringWithFormat:@"О товаре:\nФормат диска:%@\n", disk.typeDisk == CD ? @"CD" : @"DVD"];
            
        }
        
        
    } else {
        [self.navigationController popToRootViewControllerAnimated:NO];
    }
    
    
    
}


@end

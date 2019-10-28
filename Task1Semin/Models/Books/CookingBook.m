//
//  CookingBooks.m
//  Task1Semin
//
//  Created by Сергей Семин on 28.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import "CookingBook.h"

@implementation CookingBook

- (instancetype)initWithName:(NSString*)name withBarcode:(NSString*)barcode forPrice:(CGFloat)price withImage:(UIImage*)image withIngredient:(NSString*)ingredient andCountOfPages:(NSInteger)countOfPages{
    self = [super init];
    if (self) {
        
        self.name = name;
        self.barcode = barcode;
        self.price = price;
        self.image = image;
        self.countOfPages = countOfPages;
        self.ingredient = ingredient;
    }
    return self;
}


@end

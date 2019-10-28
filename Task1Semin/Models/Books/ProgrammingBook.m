//
//  ProgrammingBooks.m
//  Task1Semin
//
//  Created by Сергей Семин on 28.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import "ProgrammingBook.h"

@implementation ProgrammingBook

- (instancetype)initWithName:(NSString*)name withBarcode:(NSString*)barcode forPrice:(CGFloat)price withImage:(UIImage*)image withLanguage:(NSString*)language andCountOfPages:(NSInteger)countOfPages{
    self = [super init];
    if (self) {
        self.name = name;
        self.barcode = barcode;
        self.price = price;
        self.image = image;
        self.countOfPages = countOfPages;
        self.language = language;
    }
    return self;
}




@end

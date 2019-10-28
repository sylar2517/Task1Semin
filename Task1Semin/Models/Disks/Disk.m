//
//  Disk.m
//  Task1Semin
//
//  Created by Сергей Семин on 28.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import "Disk.h"

@implementation Disk

- (instancetype)initWithName:(NSString*)name withBarcode:(NSString*)barcode forPrice:(CGFloat)price withImage:(UIImage*)image withType:(TypeDisk) typeDisk{
    self = [super init];
    if (self) {
        self.name = name;
        self.barcode = barcode;
        self.price = price;
        self.image = image;
        self.typeDisk = typeDisk;
    }
    return self;
}


@end

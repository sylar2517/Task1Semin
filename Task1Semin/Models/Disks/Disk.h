//
//  Disk.h
//  Task1Semin
//
//  Created by Сергей Семин on 28.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import "Goods.h"

NS_ASSUME_NONNULL_BEGIN
typedef enum {
    CD,
    DVD
}TypeDisk;

@interface Disk : Goods

@property(assign, nonatomic)TypeDisk typeDisk;

- (instancetype)initWithName:(NSString*)name withBarcode:(NSString*)barcode forPrice:(CGFloat)price withImage:(UIImage*)image withType:(TypeDisk) typeDisk;

@end

NS_ASSUME_NONNULL_END

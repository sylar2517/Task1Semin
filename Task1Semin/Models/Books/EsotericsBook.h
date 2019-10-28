//
//  EsotericsBook.h
//  Task1Semin
//
//  Created by Сергей Семин on 28.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface EsotericsBook : Book

@property(assign, nonatomic)NSInteger minAge;

- (instancetype)initWithName:(NSString*)name withBarcode:(NSString*)barcode forPrice:(CGFloat)price withImage:(UIImage*)image withMinAge:(NSInteger)minAge andCountOfPages:(NSInteger)countOfPages;
@end

NS_ASSUME_NONNULL_END

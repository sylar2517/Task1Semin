//
//  ProgrammingBook.h
//  Task1Semin
//
//  Created by Сергей Семин on 28.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface ProgrammingBook : Book

@property(strong, nonatomic)NSString* language;

- (instancetype)initWithName:(NSString*)name withBarcode:(NSString*)barcode forPrice:(CGFloat)price withImage:(UIImage*)image withLanguage:(NSString*)language andCountOfPages:(NSInteger)countOfPages;

@end

NS_ASSUME_NONNULL_END

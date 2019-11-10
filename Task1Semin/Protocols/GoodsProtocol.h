//
//  GoodsProtocol.h
//  Task1Semin
//
//  Created by Сергей Семин on 11.11.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@protocol GoodsProtocol

@required
@property(strong, nonatomic)NSString* name;
@property(strong, nonatomic)NSString* barcode;
@property(assign, nonatomic)CGFloat price;
@property(strong, nonatomic)UIImage* image;

@end

NS_ASSUME_NONNULL_END

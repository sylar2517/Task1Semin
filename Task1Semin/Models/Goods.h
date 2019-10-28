//
//  Goods.h
//  Task1Semin
//
//  Created by Сергей Семин on 28.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Goods : NSObject

@property(strong, nonatomic)NSString* name;
@property(strong, nonatomic)NSString* barcode;
@property(assign, nonatomic)CGFloat price;
@property(strong, nonatomic)UIImage* image;


@end

NS_ASSUME_NONNULL_END

//
//  InfoViewController.h
//  Task1Semin
//
//  Created by Сергей Семин on 29.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class Goods;
@interface InfoViewController : UIViewController

@property(strong, nonatomic)Goods* selectedItem;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *barcodeLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;



@end

NS_ASSUME_NONNULL_END

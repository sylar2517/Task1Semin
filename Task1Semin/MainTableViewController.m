//
//  MainTableViewController.m
//  Task1Semin
//
//  Created by Сергей Семин on 28.10.2019.
//  Copyright © 2019 Сергей Семин. All rights reserved.
//

#import "MainTableViewController.h"

#import "Goods.h"
#import "Section.h"

#import "EsotericsBook.h"
#import "ProgrammingBook.h"
#import "CookingBook.h"

#import "AudioDisk.h"
#import "VideoDisk.h"
#import "SoftwareDisk.h"

#import "InfoViewController.h"


static NSString *cellIdentifier = @"cell";
static NSInteger widthCellForBook = 50;
static NSInteger heigthCellForBook = 60;
static NSInteger heigthAndWidthCellForDisk = 50;


@interface MainTableViewController ()
@property(strong, nonatomic)NSArray* sectionsArray;
@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self generatedBooksAndDisk];
}

#pragma mark - Private Methods

-(void)generatedBooksAndDisk{
    
    ProgrammingBook* book1 = [[ProgrammingBook alloc] initWithName:@"Programming in Objective-C, Third Edition"
                                                       withBarcode:@"0321711394"
                                                          forPrice:39.99f
                                                         withImage:[UIImage imageNamed:@"devObjC.jpg"]
                                                      withLanguage:@"Objective - C"
                                                   andCountOfPages:552];
    
    ProgrammingBook* book2 = [[ProgrammingBook alloc] initWithName:@"Mastering Swift 4 - Fourth Edition"
                                                       withBarcode:@"0321711394"
                                                          forPrice:44.99f
                                                         withImage:[UIImage imageNamed:@"devSwift.jpg"]
                                                      withLanguage:@"Swift"
                                                   andCountOfPages:392];
    
    ProgrammingBook* book3 = [[ProgrammingBook alloc] initWithName:@"Java Programming: The Beginning Beginner's Guide"
                                                         withBarcode:@"0692614915"
                                                            forPrice:4.79f
                                                           withImage:[UIImage imageNamed:@"devJava.jpg"]
                                                        withLanguage:@"Java"
                                                     andCountOfPages:128];
    
    
    CookingBook* book4 = [[CookingBook alloc] initWithName:@"365 Ways to Cook Chicken"
                                               withBarcode:@"0060578890"
                                                  forPrice:12.9f
                                                 withImage:[UIImage imageNamed:@"cookBook1.jpg"]
                                            withIngredient:@"Chicken"
                                           andCountOfPages:224];
    
    CookingBook* book5 = [[CookingBook alloc] initWithName:@"The Ultimate Book of Vegetables"
                                               withBarcode:@"0060578890"
                                                  forPrice:20.2f
                                                 withImage:[UIImage imageNamed:@"cookingBook2.jpg"]
                                            withIngredient:@"Vegetables"
                                           andCountOfPages:320];
    
    EsotericsBook* book6 = [[EsotericsBook alloc] initWithName:@"Esoteric Freemasonry: Rituals & Practices for a Deeper Understanding"
                                                   withBarcode:@"073874848"
                                                      forPrice:16.42f
                                                     withImage:[UIImage imageNamed:@"esotericBook.jpg"]
                                                    withMinAge:18
                                               andCountOfPages:264];
    
    
    Section* sect1 = [[Section alloc] init];
    sect1.nameSection = @"Книги";
    NSArray* booksArray = [NSArray arrayWithObjects:book1, book2, book3, book4, book5, book6, nil];
    NSSortDescriptor* sd1 = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    booksArray = [booksArray sortedArrayUsingDescriptors:@[sd1]];
    sect1.itemArray = booksArray;
  
    
    AudioDisk* disk1 = [[AudioDisk alloc] initWithName:@"Minutes To Midnight"
                                           withBarcode:@"14952"
                                              forPrice:10.f
                                             withImage:[UIImage imageNamed:@"audio1.jpg"]
                                              withType:CD];
    
    AudioDisk* disk2 = [[AudioDisk alloc] initWithName:@"Reise, Reise"
                                           withBarcode:@"5265"
                                              forPrice:11.54f
                                             withImage:[UIImage imageNamed:@"audio2.jpg"]
                                              withType:CD];
    
    
    VideoDisk* disk3 = [[VideoDisk alloc] initWithName:@"The Green Mile"
                                           withBarcode:@"17538"
                                              forPrice:8.28
                                             withImage:[UIImage imageNamed:@"video1.jpg"]
                                              withType:DVD];
    
    VideoDisk* disk4 = [[VideoDisk alloc] initWithName:@"The Shawshank Redemption "
                                           withBarcode:@"11171"
                                              forPrice:21.14f
                                             withImage:[UIImage imageNamed:@"video2.jpg"]
                                              withType:DVD];
    
    SoftwareDisk* disk5 = [[SoftwareDisk alloc] initWithName:@"Windows 10 64Bit Professional"
                                                 withBarcode:@"ABC-abc-1234"
                                                    forPrice:22.95f
                                                   withImage:[UIImage imageNamed:@"soft1.jpeg"]
                                                    withType:DVD];
    
    SoftwareDisk* disk6 = [[SoftwareDisk alloc] initWithName:@"Microsoft Office 2010 Home & Business"
                                                 withBarcode:@"0123-4567"
                                                    forPrice:329.97f
                                                   withImage:[UIImage imageNamed:@"soft2.jpg"]
                                                    withType:DVD];
    
    
    
    Section* sect2 = [[Section alloc] init];
    sect2.nameSection = @"Диски";
    NSArray* diskArray = [NSArray arrayWithObjects:disk1, disk2, disk3, disk4, disk5, disk6, nil];
    diskArray = [diskArray sortedArrayUsingDescriptors:@[sd1]];
    sect2.itemArray = diskArray;
    
    self.sectionsArray = [NSArray arrayWithObjects:sect1,sect2, nil];
    [self.tableView reloadData];
}


-(NSString*)cellSubcategory:(Goods*)item{
    
    NSString* subcategory = @"";
    
    if ([item isKindOfClass:[ProgrammingBook class]]) {
        subcategory = @"Программирование";
    } else if ([item isKindOfClass:[CookingBook class]]) {
        subcategory = @"Кулинария";
    } else if ([item isKindOfClass:[EsotericsBook class]]) {
        subcategory = @"Эзотерика";
    } else if ([item isKindOfClass:[AudioDisk class]]) {
        subcategory = @"Музыка";
    } else if ([item isKindOfClass:[VideoDisk class]]) {
        subcategory = @"Видео";
    } else if ([item isKindOfClass:[SoftwareDisk class]]) {
        subcategory = @"ПО";
    }
    
    return subcategory;
}
-(CGRect)createRectForCell:(Goods*)item{
    
    CGRect rect;
    
    if ([item isKindOfClass:[Disk class]]) {
        rect = CGRectMake(0,0,heigthAndWidthCellForDisk, heigthAndWidthCellForDisk);
    } else {
        rect = CGRectMake(0,0,widthCellForBook,heigthCellForBook);
    }
    
    return rect;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.sectionsArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Section* sect1 = [self.sectionsArray objectAtIndex:section];
    return [sect1.itemArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    Section* sect1 = [self.sectionsArray objectAtIndex:indexPath.section];
    Goods* item = [sect1.itemArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = item.name;
    cell.detailTextLabel.text = [self cellSubcategory:item];
    
    
    CGRect rect = [self createRectForCell:item];
    UIGraphicsBeginImageContext(rect.size);
    [item.image drawInRect:rect];
    UIImage *endImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    cell.imageView.image = endImage;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    Section* sect1 = [self.sectionsArray objectAtIndex:section];
    return sect1.nameSection;
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    Section* sect1 = [self.sectionsArray objectAtIndex:indexPath.section];
    Goods* item  = [sect1.itemArray objectAtIndex:indexPath.row];
   
    InfoViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"InfoViewController"];
    vc.selectedItem = item;
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

@end

//
//  FirstViewController.m
//  GroupBuy
//
//  Created by ZhongMing on 1/01/17.
//  Copyright © 2017 ZhongMing. All rights reserved.
//

#import "FirstViewController.h"
#import "NavItem.h"
#import "MyNavController.h"
#import "PopViewController.h"

@interface FirstViewController (){
    UIBarButtonItem * firstItem;
    UIBarButtonItem * secondItem;
    UIBarButtonItem * thirdItem;
}

@end

@implementation FirstViewController

static NSString * const reuseIdentifier = @"Cell";

-(instancetype)init{
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    return [self initWithCollectionViewLayout:layout];
}

#pragma mark - Create navigation bar
- (void)createNavBar{
    //logo
    UIBarButtonItem * logo = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"icon_meituan_logo"] style:UIBarButtonItemStyleDone target:nil action:nil];
    //self.navigationItem.leftBarButtonItem = logo;
    
    //3 UIbarButtonItems
    
    NavItem * first = [NavItem makeItem];
    [first addtarget:self action:@selector(firstClick)];
    NavItem * second = [NavItem makeItem];
    [second addtarget:self action:@selector(secondClick)];
    NavItem * third = [NavItem makeItem];
    [third addtarget:self action:@selector(thirdClick)];
    firstItem = [[UIBarButtonItem alloc]initWithCustomView:first];
    
    
    secondItem = [[UIBarButtonItem alloc]initWithCustomView:second];
    
    
    thirdItem = [[UIBarButtonItem alloc]initWithCustomView:third];
    
    self.navigationItem.leftBarButtonItems = @[logo, firstItem, secondItem, thirdItem];
}

#pragma mark - click event
-(void)firstClick{
    [self popUpMenu];
}

-(void)secondClick{
    [self popUpMenu];
}

-(void)thirdClick{
    [self popUpMenu];
}

#pragma mark - PopUpMenu
-(void)popUpMenu{
    //PopViewController * pvc = [[PopViewController alloc]initWithPresentedViewController:self presentingViewController:self];
    //UIPopoverController * pop = [[UIPopoverController alloc]initWithContentViewController:pvc];
    
    //UIPopoverPresentationController * pop = [[UIPopoverPresentationController alloc]initWithPresentedViewController:self presentingViewController:pvc];
    
    
    //[pop presentPopoverFromBarButtonItem:firstItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    //PopViewController * pvc = [PopViewController alloc];
    PopViewController * contentController = [PopViewController alloc];
    contentController.modalPresentationStyle = UIModalPresentationPopover;
    //pvc.presentationStyle = UIModalPresentationPopover;
    UIPopoverPresentationController * popPC = contentController.popoverPresentationController;
    popPC.barButtonItem = secondItem;
    popPC.permittedArrowDirections = UIPopoverArrowDirectionAny;
    popPC.delegate = self;
    [self presentViewController:contentController animated:YES completion:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    [self createNavBar];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end

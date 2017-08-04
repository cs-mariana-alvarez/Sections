//
//  PendenciasCardSectionCell.m
//  Experiments
//
//  Created by Mariana Alvarez on 3/27/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

#import "PendenciasCardSectionCell.h"
#import "PendenciasCell.h"
#import "PendenciasCellBuilder.h"
#import "CollectionViewReusableHeaderBuilder.h"

@implementation PendenciasCardSectionCell
@synthesize cellBuilders;

-(instancetype)init {
    self = [super init];
    if(self) {
        [self setupCellBuilders];
    }
    return self;
}

-(void)setupCellBuilders {
    NSArray *builders = @[
                          [[PendenciasCellBuilder alloc] init]

                          ];
    self.cellBuilders = builders;
    self.headerBuilder = [[CollectionViewReusableHeaderBuilder alloc] initWithTitle:@"Section Title: 0"];
}

-(NSInteger)numberOfItems {
    return self.cellBuilders.count;
}

-(CGSize)sectionItemSizeAtIndexPath:(NSIndexPath *)indexPath inCollectionView:(UICollectionView *)collectionView {
    id<CellBuilderProtocol> builder = self.cellBuilders[indexPath.row];
    return [builder sizeWithin:collectionView.bounds];
}

-(UICollectionViewCell *)sectionItemCellAtIndexPath:(NSIndexPath *)indexPath inCollectionView:(UICollectionView *)collectionView {
    id<CellBuilderProtocol> builder = self.cellBuilders[indexPath.row];
    return [builder cellForItemAtIndexPath:indexPath inCollectionView:collectionView];
}

@end

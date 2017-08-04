//
//  BaseCardSectionCell.m
//  Pods
//
//  Created by Mariana Alvarez on 8/4/17.
//
//


#import "BaseCardSectionCell.h"
#import "CellBuilderProtocol.h"

@implementation BaseCardSectionCell

@synthesize cellBuilders, headerBuilder;

-(void)registerViewsForBuildersInCollectionView:(UICollectionView *)collectionView {
    [[self headerBuilder] registerHeaderlInCollectionView:collectionView];
    for(id<CellBuilderProtocol> builder in self.cellBuilders) {
        [builder registerCellInCollectionView:collectionView];
    }
}

-(NSInteger)numberOfItems {
    return self.cellBuilders.count;
}

-(CGSize)sectionItemSizeAtIndexPath:(NSIndexPath * _Nonnull)indexPath inCollectionView:(UICollectionView * _Nonnull)collectionView {
    id<CellBuilderProtocol> builder = self.cellBuilders[indexPath.row];
    return [builder sizeWithin:collectionView.bounds];
}

-(UICollectionViewCell * _Nonnull)sectionItemCellAtIndexPath:(NSIndexPath * _Nonnull)indexPath inCollectionView:(UICollectionView * _Nonnull)collectionView {
    id<CellBuilderProtocol> builder = self.cellBuilders[indexPath.row];
    return [builder cellForItemAtIndexPath:indexPath inCollectionView:collectionView];
}

@end

//
//  CardSectionImpl.m
//  Experiments
//
//  Created by Thiago Lioy on 27/03/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

#import "ExpandedCardSection.h"

@implementation ExpandedCardSection
@synthesize cardState, regularSectionCell, expandedSectionCell, cardSectionDelegate, sectionDelegate;

-(instancetype)initWithCardState:(CardSectionState)state {
    self = [super init];
    if(self) {
        cardState = state;
    }
    return self;
}

-(void)toggleState {
    if(!self.expandedSectionCell) {
        return;
    }
    
    if(cardState == kRegularState) {
        cardState = kExpandedState;
    } else {
        cardState = kRegularState;
    }
}
-(id<SectionCell>)visibleSectionCell {
    if(!self.expandedSectionCell) {
        return self.regularSectionCell;
    }
    
    if(cardState == kRegularState) {
        return self.regularSectionCell;
    }else {
        return self.expandedSectionCell;
    }
}

-(void)registerViewsForBuildersInCollectionView:(UICollectionView *)collectionView {
    [[self regularSectionCell] registerViewsForBuildersInCollectionView:collectionView];
    [[self expandedSectionCell] registerViewsForBuildersInCollectionView:collectionView];
}

-(NSInteger)numberOfItems {
    return [[self visibleSectionCell] numberOfItems];
}
-(CGSize)sectionItemSizeAtIndexPath:(NSIndexPath*) indexPath inCollectionView:(UICollectionView * _Nonnull)collectionView {
    return [[self visibleSectionCell] sectionItemSizeAtIndexPath:indexPath inCollectionView:collectionView];
}
-(UICollectionViewCell*)sectionItemCellAtIndexPath:(NSIndexPath*) indexPath inCollectionView:(UICollectionView * _Nonnull)collectionView {
    return [[self visibleSectionCell] sectionItemCellAtIndexPath:indexPath inCollectionView:collectionView];
}

-(CGFloat)minimumInteritemSpacingForSectionAtIndex:(NSInteger)index inCollectionView:(UICollectionView * _Nonnull)collectionView{
    return 0;
}

-(CGFloat)minimumLineSpacingForSectionAtIndex:(NSInteger) index inCollectionView:(UICollectionView * _Nonnull)collectionView {
    return 0;
}

-(UIEdgeInsets)insetForSectionAtIndex {
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

-(CGSize)sectionHeaderSizeInCollectionView:(UICollectionView*) collectionView {
    return [[[self visibleSectionCell] headerBuilder] sizeWithin:collectionView.bounds];
}

-(UICollectionReusableView*)sectionHeaderCellAtIndexPath:(NSIndexPath*) indexPath inCollectionView:(UICollectionView*) collectionView {
    return [[[self visibleSectionCell] headerBuilder] headerForItemAtIndexPath:indexPath inCollectionView:collectionView];;
}

-(void)tooglePresentationState {
    [self toggleState];
    if(self.cardSectionDelegate)
        [self.cardSectionDelegate updateCardSection:self];
}

-(void)presentDetails {
    if(self.cardSectionDelegate)
        [self.cardSectionDelegate presentDetailsFor:self];
}

-(void)presentAdditionalDetails {
    if(self.cardSectionDelegate)
        [self.cardSectionDelegate presentAdditionalDetailsFor:self];
}

-(void)didSelectItemAtIndexPath:(NSIndexPath *)indexPath inCollectionView:(UICollectionView * _Nonnull)collectionView{
}

@end


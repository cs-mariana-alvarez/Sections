//
//  CollectionViewReusableHeaderBuilder.m
//  Sections
//
//  Created by Mariana Alvarez on 8/4/17.
//  Copyright © 2017 thiagolioy. All rights reserved.
//

#import "CollectionViewReusableHeaderBuilder.h"
#import "CollectionViewReusableHeader.h"

@interface CollectionViewReusableHeaderBuilder ()
@property(nonnull, nonatomic, copy) NSString *title;
@end

@implementation CollectionViewReusableHeaderBuilder

-(instancetype)initWithTitle:(NSString* _Nonnull)title {
    self = [super init];
    
    if (self) {
        self.title = title;
    }
        
    return self;
}

-(CGSize)sizeWithin:(CGRect)bounds {
    return [CollectionViewReusableHeader sizeWithin:bounds withPadding:UIEdgeInsetsZero];
}

-(void)registerHeaderlInCollectionView:(UICollectionView * _Nonnull)collectionview {
    [CollectionViewReusableHeader registerHeaderCellIn:collectionview];
}

-(UICollectionReusableView * _Nonnull)headerForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath inCollectionView:(UICollectionView* _Nonnull)collectionView {
    CollectionViewReusableHeader *cell = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[CollectionViewReusableHeader cellIdentifier] forIndexPath:indexPath];
    [cell setupWith:self.title];
    
    return cell;
}

@end

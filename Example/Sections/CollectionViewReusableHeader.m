//
//  CollectionViewReusableHeader.m
//  Experiments
//
//  Created by Thiago Lioy on 28/03/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

#import "CollectionViewReusableHeader.h"


@implementation CollectionViewReusableHeader

+(CGSize)sizeWithin:(CGRect)bounds withPadding:(UIEdgeInsets)insents {
    return CGSizeMake(bounds.size.width, 50);
}

+(NSString* _Nonnull)cellIdentifier {
    return NSStringFromClass(self.class);
}

+(void)registerHeaderCellIn:(UICollectionView *)collectionview {
    NSString *identifier = [CollectionViewReusableHeader cellIdentifier];
    UINib *nib = [UINib nibWithNibName:identifier bundle:[NSBundle bundleForClass:[CollectionViewReusableHeader class]]];
    [collectionview registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:identifier];
}

-(void)setupWith:(NSString*) title {
    self.title.text = title;
}

@end

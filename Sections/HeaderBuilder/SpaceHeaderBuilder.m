//
//  SpaceHeaderBuilder.m
//  Pods
//
//  Created by Mariana Alvarez on 8/4/17.
//
//

#import "SpaceHeaderBuilder.h"

@implementation SpaceHeaderBuilder

-(CGSize)sizeWithin:(CGRect)bounds {
    return CGSizeMake(bounds.size.width, 16);
}

+(NSString* _Nonnull)cellIdentifier {
    return NSStringFromClass(self.class);
}

-(void)registerHeaderlInCollectionView:(UICollectionView * _Nonnull)collectionview {
    
    NSBundle *podBundle = [NSBundle bundleForClass:[SpaceHeaderBuilder class]];
    NSURL *bundleURL = [podBundle URLForResource:@"Xibs" withExtension:@"bundle"];
    NSBundle *xibBundle = [NSBundle bundleWithURL:bundleURL];
    
    NSString *identifier = [SpaceHeaderBuilder cellIdentifier];
    UINib *nib = [UINib nibWithNibName:identifier bundle:xibBundle];
    [collectionview registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:identifier];
}

-(UICollectionReusableView * _Nonnull)headerForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath inCollectionView:(UICollectionView* _Nonnull)collectionView {
    return [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[SpaceHeaderBuilder cellIdentifier] forIndexPath:indexPath];
}

@end

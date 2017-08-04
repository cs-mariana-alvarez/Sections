//
//  HeaderBuilderProtocol.h
//  Pods
//
//  Created by Mariana Alvarez on 8/3/17.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#ifndef HeaderBuilderProtocol_h
#define HeaderBuilderProtocol_h

@protocol HeaderBuilderProtocol
-(void)registerHeaderlInCollectionView:(UICollectionView* _Nonnull)collectionView;
-(UICollectionReusableView * _Nonnull)headerForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath inCollectionView:(UICollectionView* _Nonnull)collectionView;
-(CGSize)sizeWithin:(CGRect)bounds;
@end

#endif /* HeaderBuilderProtocol_h */

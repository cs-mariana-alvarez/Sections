//
//  GridSectionImpl.h
//  Experiments
//
//  Created by Thiago Lioy on 28/03/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SectionCellInfraProtocols.h"

@interface GridSectionImpl : NSObject<Section>
@property(nonatomic, strong) NSArray *items;
@property(nonatomic, weak) UICollectionView *collectionView;

-(instancetype)initWithCollectionView:(UICollectionView*)collection andSectionDelegate:(id<SectionDelegate>) delegate;
@end

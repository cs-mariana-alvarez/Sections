//
//  CardSectionImpl.h
//  Experiments
//
//  Created by Thiago Lioy on 27/03/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SectionCellInfraProtocols.h"

@protocol CardSectionStatePersistence <NSObject>
-(void)persistState:(CardSectionState)state;
@end

@interface ExpandedCardSection : NSObject<CardSection, CellDelegate>
-(instancetype _Nonnull)initWithCardState:(CardSectionState)state;
-(instancetype _Nonnull)initWithCardState:(CardSectionState)state cardStatePersistence:(id<CardSectionStatePersistence> _Nullable)cardStatePersistence;
@end


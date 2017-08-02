//
//  SaldoCardSectionBuilder.h
//  Experiments
//
//  Created by Thiago Lioy on 27/03/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SectionCellInfraProtocols.h"

@interface SaldoCardSectionBuilder : NSObject<CardSectionBuilderProtocol>
-(instancetype)initWithSectionDelegate:(id<CardSectionDelegate>) cardSectionDelegate;
@end

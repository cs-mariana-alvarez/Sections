//
//  SaldoCardSectionCell.h
//  Experiments
//
//  Created by Thiago Lioy on 24/03/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SectionCellInfraProtocols.h"
#import <Sections/BaseCardSectionCell.h>


@interface SaldoCardSectionCell: BaseCardSectionCell<SectionCell>
-(instancetype)initWithCellDelegate:(id<CellDelegate>) cellDelegate;
@end

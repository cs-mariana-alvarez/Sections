//
//  PendenciasCardSectionBuilder.m
//  Experiments
//
//  Created by Mariana Alvarez on 3/27/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

#import "PendenciasCardSectionBuilder.h"
#import "PendenciasCardSectionCell.h"
#import <Sections/ExpandedCardSection.h>

@implementation PendenciasCardSectionBuilder

-(instancetype)initWithSectionDelegate:(id<CardSectionDelegate>) cardSectionDelegate {
    self = [super init];
    if(self) {
        self.delegate = cardSectionDelegate;
    }
    return self;
}

-(id<Section>)section {
    
    ExpandedCardSection *section = [[ExpandedCardSection alloc] init];
    
    PendenciasCardSectionCell *pendenciasCardSection = [[PendenciasCardSectionCell alloc] init];
    
    section.regularSectionCell = pendenciasCardSection;
    
    
    return section;
}

@end

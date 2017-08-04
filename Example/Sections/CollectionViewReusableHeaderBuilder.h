//
//  CollectionViewReusableHeaderBuilder.h
//  Sections
//
//  Created by Mariana Alvarez on 8/4/17.
//  Copyright © 2017 thiagolioy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Sections/HeaderBuilderProtocol.h>

@interface CollectionViewReusableHeaderBuilder : NSObject<HeaderBuilderProtocol>
-(instancetype _Nonnull)initWithTitle:(NSString* _Nonnull)title;
@end

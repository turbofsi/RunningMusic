//
//  ChangePlayState.h
//  RunningMusicDemo
//
//  Created by apple on 2014-09-22.
//  Copyright (c) 2014 UofT. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChangePlayState <NSObject>

- (void)toChangePlayState:(BOOL)newState;

@end

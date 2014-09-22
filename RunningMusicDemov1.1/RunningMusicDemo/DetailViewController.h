//
//  DetailViewController.h
//  RunningMusicDemo
//
//  Created by apple on 2014-09-20.
//  Copyright (c) 2014 UofT. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ChangePlayState.h"

@interface DetailViewController : UIViewController

- (IBAction)singleTap:(UITapGestureRecognizer *)sender;
@property (strong, nonatomic) id<ChangePlayState> delegate;
//- (IBAction)singleTap:(id)sender forSegue:(UIStoryboardSegue *)segue;



@end

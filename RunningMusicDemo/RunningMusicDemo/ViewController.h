//
//  ViewController.h
//  RunningMusicDemo
//
//  Created by apple on 2014-09-20.
//  Copyright (c) 2014 UofT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) AVAudioPlayer *musicPlayer;

@property (strong, nonatomic) IBOutlet UIButton *playState;
@property (strong, nonatomic) IBOutlet UISlider *volumeSlider;
@property (strong, nonatomic) IBOutlet UISlider *currentSlider;


- (IBAction)playAction:(UIButton *)sender;
- (IBAction)volumeChange:(UISlider *)sender;
- (IBAction)progressChange:(UISlider *)sender;

@end


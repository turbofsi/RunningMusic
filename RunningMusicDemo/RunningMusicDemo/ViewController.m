//
//  ViewController.m
//  RunningMusicDemo
//
//  Created by apple on 2014-09-20.
//  Copyright (c) 2014 UofT. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
#pragma mark - Loading music
    
//    self.view.frame = CGRectMake(0, 0, 320, 568);
    
    UIImage *playImage = [UIImage imageNamed:@"play"];
    [_playState setBackgroundImage:playImage forState:UIControlStateNormal];
    

    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"mp3"];
    NSURL *musicUrl = [NSURL fileURLWithPath:filePath];
    
    _musicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:musicUrl error:NULL];
    [_musicPlayer prepareToPlay];
    
    _currentSlider.minimumValue = 0;
    _currentSlider.maximumValue = _musicPlayer.duration;
    
    _volumeSlider.minimumValue = 0;
    _volumeSlider.maximumValue = 1;
    _volumeSlider.value = 0.3;
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    
    
    
    
}

- (void)timerAction:(NSTimer *)Timer
{
    
//    _volumeSlider.value = _musicPlayer.volume;
    _currentSlider.value = _musicPlayer.currentTime;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playAction:(UIButton *)sender {
    
    BOOL playing = _musicPlayer.playing;
    if (playing) {
        [_musicPlayer pause];
        UIImage *playImage = [UIImage imageNamed:@"play"];
        [sender setBackgroundImage:playImage forState:UIControlStateNormal];
    }
    else{
        [_musicPlayer play];
        UIImage *pauseImage = [UIImage imageNamed:@"pasueHight"];
        [sender setBackgroundImage:pauseImage forState:UIControlStateNormal];
    }
    
    
}

- (IBAction)volumeChange:(UISlider *)sender {
    _musicPlayer.volume = sender.value;
}

- (IBAction)progressChange:(UISlider *)sender {
    _musicPlayer.currentTime = sender.value;
}
@end

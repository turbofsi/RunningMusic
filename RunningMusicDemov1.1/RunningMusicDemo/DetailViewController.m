//
//  DetailViewController.m
//  RunningMusicDemo
//
//  Created by apple on 2014-09-20.
//  Copyright (c) 2014 UofT. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//- (IBAction)singleTap:(id)sender forSegue:(UIStoryboard *)boardId{
//    boardId.
//}
//{
//    NSLog(@"Begin");
//    ViewController *MainVC = segue.destinationViewController;
//    BOOL playState = MainVC.musicPlayer.play;
//    if (playState) {
//        [MainVC.musicPlayer pause];
//    }
//    else{
//        [MainVC.musicPlayer play];
//    }
//}
static int id101 = 0;
- (IBAction)singleTap:(UITapGestureRecognizer *)sender {
    if (id101%2 == 0) {
        [self.delegate toChangePlayState:YES];
    }
    else{
        [self.delegate toChangePlayState:NO];
    }
    id101++;
}
@end

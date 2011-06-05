//
//  HelloWorldLayer.m
//  CCSlider
//
//  Created by Ngo Duc Hiep on 5/4/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

// Import the interfaces
#import "HelloWorldScene.h"

// HelloWorld implementation
@implementation HelloWorld

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorld *layer = [HelloWorld node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init] )) {
		bg = [CCSprite spriteWithFile:@"garden.png"];
		bg.position = ccp(240,160);
		[self addChild:bg];
		
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
		
		CCSlider *_slider = [CCSlider sliderWithTrackImage:@"slider_track.png" knobImage:@"slider_knob.png" target:self selector:@selector(scaleChanged:)];
		_slider.position = ccp(450,160);
		_slider.rotation = -90;
		_slider.height = 100;
		_slider.horizontalPadding = 50;
		_slider.trackTouchOutsideContent = YES;
		_slider.evaluateFirstTouch = NO;
		_slider.minValue = .5;
		_slider.maxValue = 1;
		_slider.value = .5;
		[self addChild:_slider];
	}
	return self;
}

- (void) scaleChanged:(CCSlider *) slider{
	bg.scale = slider.value;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end

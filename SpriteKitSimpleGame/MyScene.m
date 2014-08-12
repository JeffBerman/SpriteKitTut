//
//  MyScene.m
//  SpriteKitSimpleGame
//
//  Created by Jeff on 8/7/14.
//  Copyright (c) 2014 Jeff Berman. All rights reserved.
//

#import "MyScene.h"

@interface MyScene ()
@property (nonatomic) SKSpriteNode *player;

@end

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        NSLog(@"Size: %@", NSStringFromCGSize(size));
        
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end

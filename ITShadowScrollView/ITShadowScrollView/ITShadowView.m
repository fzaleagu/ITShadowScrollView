// DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
// Version 2, December 2004
//
// Copyright (C) 2013 Ilija Tovilo <support@ilijatovilo.ch>
//
// Everyone is permitted to copy and distribute verbatim or modified
// copies of this license document, and changing it is allowed as long
// as the name is changed.
//
// DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
// TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
// 0. You just DO WHAT THE FUCK YOU WANT TO.

//
//  ITShadowView.m
//  ITShadowScrollView
//
//  Created by Ilija Tovilo on 9/7/13.
//  Copyright (c) 2013 Ilija Tovilo. All rights reserved.
//

#import "ITShadowView.h"

@implementation ITShadowView

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setUp];
    }
    return self;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp {
    self.shadowHeight = 30.0;
    self.shadowOpacity = 0.4;
    self.fadeMargin = 100.0;
}

- (void)drawRect:(NSRect)dirtyRect
{
    float alphaTop = self.shadowOpacity / self.fadeMargin * ((self.topMargin <= self.fadeMargin)?self.topMargin:self.fadeMargin);
    NSGradient *gradTop = [[NSGradient alloc] initWithColors:@[[NSColor colorWithDeviceWhite:0.0 alpha:alphaTop],
                                                               [NSColor clearColor]]];
    [gradTop drawInRect:NSMakeRect(0, self.frame.size.height - self.shadowHeight, self.frame.size.width, self.shadowHeight) angle:270];


    float alphaBottom = self.shadowOpacity / self.fadeMargin * ((self.bottomMargin <= self.fadeMargin)?self.bottomMargin:self.fadeMargin);
    NSGradient *gradBottom = [[NSGradient alloc] initWithColors:@[[NSColor colorWithDeviceWhite:0.0 alpha:alphaBottom],
                                                                  [NSColor clearColor]]];
    [gradBottom drawInRect:NSMakeRect(0, 0, self.frame.size.width, self.shadowHeight) angle:90];

}

@end

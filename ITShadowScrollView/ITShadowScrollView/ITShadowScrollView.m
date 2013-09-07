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
//  ITShadowScrollView.m
//  ITShadowScrollView
//
//  Created by Ilija Tovilo on 9/7/13.
//  Copyright (c) 2013 Ilija Tovilo. All rights reserved.
//

#import "ITShadowScrollView.h"
#import "ITShadowView.h"

@implementation ITShadowScrollView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initShadowClipView];
        [self setBorderType:NSNoBorder];
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initShadowClipView];
    }
    return self;
}

- (void)awakeFromNib {
    // Initial draw
    [self boundsDidChange:nil];
}

- (void)initShadowClipView {
    // Get scrolling callbacks
    [self.contentView setPostsBoundsChangedNotifications:YES];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(boundsDidChange:) name:NSViewBoundsDidChangeNotification object:self.contentView];
    
    // Add our drawing view
    self.shadowView = [[ITShadowView alloc] initWithFrame:self.bounds];
    [self addSubview:self.shadowView];
}

- (void)boundsDidChange:(id)sender {
    // If the scroll view scrolled, reset the margins
    self.shadowView.topMargin = self.contentView.documentVisibleRect.origin.y;
    self.shadowView.bottomMargin = [self.documentView frame].size.height - (self.contentView.documentVisibleRect.origin.y + self.contentView.frame.size.height);
    
    // Redraw the shadow view
    [self.shadowView setNeedsDisplay:YES];
}

// Resize the shadow view if the scroll view gets resized
- (void)setFrame:(NSRect)frameRect {
    [super setFrame:frameRect];
    [self.shadowView setFrame:self.bounds];
}

@end

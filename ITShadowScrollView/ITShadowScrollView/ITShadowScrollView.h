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
//  ITShadowScrollView.h
//  ITShadowScrollView
//
//  Created by Ilija Tovilo on 9/7/13.
//  Copyright (c) 2013 Ilija Tovilo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ITShadowView;
@interface ITShadowScrollView : NSScrollView

/**
 * @property shadowView - The shadow view draws the shadow. It's placed as a subview over the clip view.
 */
@property (strong) ITShadowView *shadowView;

@end

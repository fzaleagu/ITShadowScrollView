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
//  ITShadowView.h
//  ITShadowScrollView
//
//  Created by Ilija Tovilo on 9/7/13.
//  Copyright (c) 2013 Ilija Tovilo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ITShadowView : NSView

/**
 * @property shadowHeight - The height of the shadow
 */
@property (nonatomic) float shadowHeight;

/**
 * @property fadeMargin - Stands for the amount of scrolling you have to do until the opacity of the shadow is 100%
 */
@property (nonatomic) float fadeMargin;

/**
 * @property shadowOpacity - The full opacity of the shadow
 */
@property (nonatomic) float shadowOpacity;

/**
 * @property topMargin - The current top margin of the document view
 */
@property (nonatomic) float topMargin;

/**
 * @property bottomMargin - The current bottom margin of the document view
 */
@property (nonatomic) float bottomMargin;

@end

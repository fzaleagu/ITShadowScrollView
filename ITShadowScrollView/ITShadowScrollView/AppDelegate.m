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
//  AppDelegate.m
//  ITShadowScrollView
//
//  Created by Ilija Tovilo on 9/7/13.
//  Copyright (c) 2013 Ilija Tovilo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

// *********************************************************************
// ******************************************** <Demonstration Purposes>
// *********************************************************************

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 100;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    return [NSString stringWithFormat:@"Row %ld", (long)row];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:@"default" owner:self];
    cellView.textField.stringValue = [self tableView:tableView objectValueForTableColumn:tableColumn row:row];
    
    return cellView;
}

// *********************************************************************
// ******************************************** </Demonstration Purposes>
// *********************************************************************

@end

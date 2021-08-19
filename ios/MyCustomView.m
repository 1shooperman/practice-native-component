//
//  MyCustomView.m
//  AwesomeProject
//
//  Created by Brandon  Shoop on 8/19/21.
//

#import <React/RCTViewManager.h>
 
@interface RCT_EXTERN_MODULE(RCTMyCustomViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(status, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onClick, RCTBubblingEventBlock)
 
@end

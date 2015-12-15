//
//  Constant.h
//  KidsPuzzle
//
//  Created by Piyush Kachariya on 10/18/15.
//  Copyright © 2015 Kachariya&co. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

#define getStroyboard(StoryboardWithName) [UIStoryboard storyboardWithName:StoryboardWithName bundle:NULL]
#define loadViewController(StroyBoardName, VCIdentifer) [getStroyboard(StroyBoardName)instantiateViewControllerWithIdentifier:VCIdentifer]

#define TMStoryboard_Main @"Main"

#endif /* Constant_h */

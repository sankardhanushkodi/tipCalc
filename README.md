# Pre-work - *tipCalc*

**tipCalc** is a tip calculator application for iOS.

Submitted by: **Sankar Dhanushkodi**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Use slider control to pick tip percentage instead of SegmentedControl since it gives the user more range/control
- [X] Save default tip when setting's view disappears
- [X] Reset tip slider when page re-appears and recalculate tip and total based on new default
- [X] Implemented first responder in Settings view as well to the default tip field
- [X] Implemented tap gesture on settings page as well to hide keyboard


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/6kWM8GG.gifv' title='Video Walkthrough' width='' alt='Video Walkthrough' />

The user story walkthrough is available at http://i.imgur.com/6kWM8GG.gifv


GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Challenges encountered: 
1. Had trouble with the imgur URL since I was using the blog URL instead of the image URL.  But still can't get .md file to use the URL directly.
2. Had to refactor code to call calcTip from multiple places (especially when the view reappears after the settings are changed).  Did not know how to invoke the existing action method since it had other params (sender).  But eventually created an internal method for the code to be called in both events.

## License

Copyright [2017] [Sankar Dhanushkodi]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

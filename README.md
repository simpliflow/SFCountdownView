SFCountdownView
==========================
A simple customizable countdown overlay View.

![Alt text](/screenshot_countdown.png "Countdown Overlay")

Setup
-----

**Installing with [CocoaPods](http://cocoapods.org)**

If you're unfamiliar with CocoaPods you can check out this tutorial [here](http://www.raywenderlich.com/12139/introduction-to-cocoapods).

1. In Terminal navigate to the root of your project.
2. Run 'touch Podfile' to create the Podfile.
3. Open the Podfile using 'open -e Podfile'
4. Add the pod `SFCountdownView` to your [Podfile](https://github.com/CocoaPods/CocoaPods/wiki/A-Podfile).

        platform :ios, '7.0'
        pod 'SFCountdownView'
        
5. Run `pod install`.
6. Open your app's `.xcworkspace` file to launch Xcode and start using the control!

Usage
-----
1. Either create SFCountdownView by dragging UIView from storyboard and change implementing class or create it programmatically
2. Create an outlet (if create via storyboard)
3. Set up 

        // sets the delegate
	    self.sfCountdownView.delegate = self;

	    // background alpha value
	    self.sfCountdownView.backgroundAlpha = 0.2;

	    // the color of the counter
	    self.sfCountdownView.countdownColor = [UIColor blackColor];

	    // countdown start value
	    self.sfCountdownView.countdownFrom = 3;

	    // finish text to display
	    self.sfCountdownView.finishText = @"Do it";

	    // necessary to refresh alpha and countdown color
	    [self.sfCountdownView updateAppearance];

4. Countdown interaction

        [self.sfCountdownView start];
        [self.sfCountdownView stop];

Delegate Methods
---------

	- (void) countdownFinished:(SFCountdownView *)view


Author(s)
-------

[Simpliflow GmbH](https://github.com/simpliflow)

[Thomas Winkler](https://github.com/tomgong)

Licence
-------

Distributed under the MIT License.


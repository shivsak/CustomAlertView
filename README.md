# CustomAlertView

<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/0.png" width="300px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/4.png" width="300px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/2.png" width="300px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/7.png" width="300px" />

<h2>Setup</h2>
Add the CustomAlertView.h and CustomAlertView.m files into your project.
Then import the .h file.
```objectivec
#import "CustomAlertView.h"
```

Initialize your Custom Alert View.

```objectivec
CustomAlertView *alert = [[CustomAlertView alloc] init];
```

Then set it up.

```objectivec
[alert initWithTitle:@"No Internet!" message:@"You do not have an internet connection. Please connect to the internet and try again." firstButtonText:nil cancelButtonText:@"Okay" withContainer:self];
```
(withContainer takes in a UIViewController as the parameter. Usually, self should suffice)

And display it:
```objectivec
[alert showAlert];
```

<h2>Adding Actions to the Buttons</h2>
```objectivec
[alert.customAlertButton addTarget:self action:@selector(firstAction:) forControlEvents:UIControlEventTouchUpInside];
[alert.customAlertButtonCancel addTarget:self action:@selector(cancelButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
```

The code for 'cancelButtonPressed' should be:

```objc
-(IBAction)cancelButtonPressed:(id)sender {
    [[[sender superview] superview] removeFromSuperview];
}
```

<h2>Customizing the Appearance</h2>
I've included several 'themes' that can be used as follows
```objc
[alert setTheme:4];
```
Add the above line before [alert show].
Theme numbers are given at the end of this readme file.

You can customize individual elements too. 
The layout is very simple. The customAlertBackground UIView is a subview of your View Controller's view.
The customAlert UIView is the actual alert box which is a subview of customAlertBackground.
The other customizable elements are
- UILabel customAlertTitle
- UILabel customAlertMessage
- UIButton customAlertButton
- UIButton customAlertButtonCancel.

I've also included a top-positioned alert.
To set the position of the CustomAlertView, use
```objc
[alert setPosition:1];
```
Position 0 is the default position in the center of the screen.
Position 1 is a top-positioned alert.

<h3>Sample Code</h3>
Here's a sample of all the code you'll need to use CustomAlertView:
```objc
#import "ViewController.h"
#import "CustomAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    CustomAlertView *alert = [[CustomAlertView alloc] init];
    [alert initWithTitle:@"No Internet!" message:@"You do not have an internet connection. Please connect to the internet and try again." firstButtonText:nil cancelButtonText:@"Okay" withContainer:self];
    [alert.customAlertButton addTarget:self action:@selector(firstAction:) forControlEvents:UIControlEventTouchUpInside];
    [alert.customAlertButtonCancel addTarget:self action:@selector(cancelButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [alert setTheme:4];
    [alert setPosition:0];
    
    [alert showAlert];
    

}

```

<h2>Screenshots</h2>
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/0.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/1.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/2.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/3.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/4.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/5.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/6.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/7.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/8.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/9.png" width="200px" />
<img src="http://columbia.edu/~ss4757/resources/app-screenshots/CustomAlertView/10.png" width="200px" />

<h2>Theme Codes</h2>
- 0: White, Green, Gray
- 1: Black, Green, Gray
- 2: Blue, White, Red
- 3: Purple, Gold
- 4: Black, White, Red
- 5: Green, White,

<h2>Position Codes</h2>
- 0: Default (Center of Screen)
- 1: Top (Top of Screen)

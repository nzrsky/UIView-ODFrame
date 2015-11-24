# UIView-ODFrame

[![Version](https://img.shields.io/cocoapods/v/UIView+ODFrame.svg?style=flat)](http://cocoapods.org/pods/UIView+ODFrame)
[![License](https://img.shields.io/cocoapods/l/UIView+ODFrame.svg?style=flat)](http://cocoapods.org/pods/UIView+ODFrame)
[![Platform](https://img.shields.io/cocoapods/p/UIView+ODFrame.svg?style=flat)](http://cocoapods.org/pods/UIView+ODFrame)

Category for UIView extends the frame accessibility

## Usage

For example, instead of:
```objective-c
CGRect rect = view.frame;
rect.size.width += 100;
view.frame = rect;
```

you can use:
```objective-c
view.od_width+=100;
```

## Methods

Position:
   * od_origin;
   * od_x;
   * od_y;
   * od_left;
   * od_top;
   * od_bottom;
   * od_right;

Size:
   * od_size;
   * od_height;
   * od_width;

Bounds:
   * od_boundsWidth;
   * od_boundsHeight;
   * od_boundsX;
   * od_boundsY;

Center:
   * od_centerX;
   * od_centerY;

## Extra inline functions

Point and Frame values:
```objective-c
NSValue *ODRect(CGRect frame);
NSValue *ODPoint(CGPoint point);
```

Integral structs:
```objective-c
CGPoint CGPointIntegral(CGPoint point);
CGSize CGSizeIntegral(CGSize size);
```

Average between two values:
```objective-c
float avgf(float x1, float x2);
double avgd(double x1, double x2);
```

## Installation

UIView-ODFrame is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIView+ODFrame"
```

## Author

Alexey Nazaroff, alexx.nazaroff@gmail.com

## License

UIView-ODFrame is available under the MIT license. See the LICENSE file for more info.

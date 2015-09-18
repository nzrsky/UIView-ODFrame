// UIView+ODFrame.h
//
// Copyright (c) 2009-2015 Alexey Nazaroff, AJR
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (OD_Frame)
@property (nonatomic, assign) CGPoint od_origin;
@property (nonatomic, assign) CGSize od_size;

@property (nonatomic, assign) CGFloat od_x;
@property (nonatomic, assign) CGFloat od_y;
@property (nonatomic, assign) CGFloat od_left;
@property (nonatomic, assign) CGFloat od_top;
@property (nonatomic, assign) CGFloat od_bottom;
@property (nonatomic, assign) CGFloat od_right;

@property (nonatomic, assign) CGFloat od_height;
@property (nonatomic, assign) CGFloat od_width;

@property (nonatomic, assign) CGFloat od_boundsWidth;
@property (nonatomic, assign) CGFloat od_boundsHeight;
@property (nonatomic, assign) CGFloat od_boundsX;
@property (nonatomic, assign) CGFloat od_boundsY;

@property (nonatomic, assign) CGFloat od_centerX;
@property (nonatomic, assign) CGFloat od_centerY;
@end

CG_INLINE
NSValue *ODRect(CGRect frame) {
    return [NSValue valueWithCGRect:frame];
}

CG_INLINE
NSValue *ODPoint(CGPoint point) {
    return [NSValue valueWithCGPoint:point];
}

CG_INLINE
CGPoint CGPointIntegral(CGPoint point) {
    return (CGPoint){roundf(point.x), roundf(point.y)};
}

CG_INLINE
CGSize CGSizeIntegral(CGSize size) {
    return (CGSize){roundf(size.width), roundf(size.height)};
}

CG_INLINE
float avgf(float x1, float x2) {
    return roundf((x1-x2)*0.5f);
}

CG_INLINE
double avgd(double x1, double x2) {
    return round((x1-x2)*0.5);
}

// UIView+Frame.m
//
// Copyright (c)2009-2015 Alex Nazaroff, AJR
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

#import "UIView+ODFrame.h"

@implementation UIView (OD_Frame)

- (void)setOd_origin:(CGPoint)origin {
    CGRect rc = self.frame;
    rc.origin = origin;
    self.frame = rc;
}

- (void)setOd_x:(CGFloat)x {
    CGRect rc = self.frame;
    rc.origin.x = x;
    self.frame = rc;
}

- (void)setOd_y:(CGFloat)y {
    CGRect rc = self.frame;
    rc.origin.y = y;
    self.frame = rc;
}

- (void)setOd_left:(CGFloat)left {
    self.od_x = left;
}

- (void)setOd_top:(CGFloat)top {
    self.od_y = top;
}

- (void)setOd_bottom:(CGFloat)bottom {
    CGRect rc = self.frame;
    rc.origin.y = bottom - rc.size.height;
    self.frame = rc;
}

- (void)setOd_right:(CGFloat)right {
    CGRect rc = self.frame;
    rc.origin.x = right - rc.size.width;
    self.frame = rc;
}


- (void)setOd_size:(CGSize)sz {
    CGRect rc = self.frame;
    rc.size = sz;
    self.frame = rc;
}

- (void)setOd_width:(CGFloat)w {
    CGRect rc = self.frame;
    rc.size.width = w;
    self.frame = rc;
}

- (void)setOd_height:(CGFloat)h {
    CGRect rc = self.frame;
    rc.size.height = h;
    self.frame = rc;
}

- (CGPoint)od_origin {
    return self.frame.origin;
}

- (CGFloat)od_x {
    return self.frame.origin.x;
}

- (CGFloat)od_y {
    return self.frame.origin.y;
}

- (CGFloat)od_top {
    return self.frame.origin.y;
}

- (CGFloat)od_left {
    return self.frame.origin.x;
}

- (CGFloat)od_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)od_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGSize)od_size {
    return self.frame.size;
}

- (CGFloat)od_height {
    return self.frame.size.height;
}

- (CGFloat)od_width {
    return self.frame.size.width;
}


- (void)setOd_centerY:(CGFloat)y {
    CGPoint pt = self.center;
    pt.y = y;
    self.center = pt;
}

- (void)setOd_centerX:(CGFloat)x {
    CGPoint pt = self.center;
    pt.x = x;
    self.center = pt;
}

- (CGFloat)od_centerX {
    return self.center.x;
}

- (CGFloat)od_centerY {
    return self.center.y;
}


- (void)setOd_boundsWidth:(CGFloat)w {
    CGRect rc = self.bounds;
    rc.size.width = w;
    self.bounds = rc;
}

- (void)setOd_boundsHeight:(CGFloat)h {
    CGRect rc = self.bounds;
    rc.size.height = h;
    self.bounds = rc;
}

- (CGFloat)od_boundsWidth {
    return self.bounds.size.width;
}

- (CGFloat)od_boundsHeight {
    return self.bounds.size.height;
}

- (void)setOd_boundsX:(CGFloat)x {
    CGRect rc = self.bounds;
    rc.origin.x = x;
    self.bounds = rc;
}

- (void)setOd_boundsY:(CGFloat)y {
    CGRect rc = self.bounds;
    rc.origin.y = y;
    self.bounds = rc;
}

- (CGFloat)od_boundsX {
    return self.bounds.origin.x;
}

- (CGFloat)od_boundsY {
    return self.bounds.origin.y;
}

@end

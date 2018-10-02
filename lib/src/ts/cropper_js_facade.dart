@JS()
library ts.cropper_js_facade;

import "package:js/js.dart";
import "dart:html"
    show CustomEvent, Element, NodeList, ImageElement, CanvasElement;

// Module Cropper
@JS("Cropper.DragMode")
class DragMode {
  external static num get Crop;
  external static num get Move;
  external static num get None;
}

@JS("Cropper.ViewMode")
class ViewMode {
  external static num get Free;
  external static num get CanvasWidthAndHeightShouldNotBeLessThanCropBoxSize;
  external static num get CanvasWidthOrHeightShouldNotBeLessThanContainerSize;
  external static num get CanvasWidthAndHeightShouldNotBeLessThanContainerSize;
}

@JS("Cropper.ImageSmoothingQuality")
class ImageSmoothingQuality {
  external static num get Low;
  external static num get Medium;
  external static num get High;
}

@anonymous
@JS()
abstract class Data {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get rotate;
  external set rotate(num v);
  external num get scaleX;
  external set scaleX(num v);
  external num get scaleY;
  external set scaleY(num v);
  external factory Data(
      {num x,
      num y,
      num width,
      num height,
      num rotate,
      num scaleX,
      num scaleY});
}

@anonymous
@JS()
abstract class ContainerData {
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external factory ContainerData({num width, num height});
}

@anonymous
@JS()
abstract class ImageData {
  external num get left;
  external set left(num v);
  external num get top;
  external set top(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get rotate;
  external set rotate(num v);
  external num get scaleX;
  external set scaleX(num v);
  external num get scaleY;
  external set scaleY(num v);
  external num get naturalWidth;
  external set naturalWidth(num v);
  external num get naturalHeight;
  external set naturalHeight(num v);
  external num get aspectRatio;
  external set aspectRatio(num v);
  external factory ImageData(
      {num left,
      num top,
      num width,
      num height,
      num rotate,
      num scaleX,
      num scaleY,
      num naturalWidth,
      num naturalHeight,
      num aspectRatio});
}

@anonymous
@JS()
abstract class CanvasData {
  external num get left;
  external set left(num v);
  external num get top;
  external set top(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get naturalWidth;
  external set naturalWidth(num v);
  external num get naturalHeight;
  external set naturalHeight(num v);
  external factory CanvasData(
      {num left,
      num top,
      num width,
      num height,
      num naturalWidth,
      num naturalHeight});
}

@anonymous
@JS()
abstract class CropBoxData {
  external num get left;
  external set left(num v);
  external num get top;
  external set top(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external factory CropBoxData({num left, num top, num width, num height});
}

@anonymous
@JS()
abstract class GetCroppedCanvasOptions {
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get minWidth;
  external set minWidth(num v);
  external num get minHeight;
  external set minHeight(num v);
  external num get maxWidth;
  external set maxWidth(num v);
  external num get maxHeight;
  external set maxHeight(num v);
  external String get fillColor;
  external set fillColor(String v);
  external bool get imageSmoothingEnabled;
  external set imageSmoothingEnabled(bool v);
  external num /*enum ImageSmoothingQuality*/ get imageSmoothingQuality;
  external set imageSmoothingQuality(num /*enum ImageSmoothingQuality*/ v);
  external factory GetCroppedCanvasOptions(
      {num width,
      num height,
      num minWidth,
      num minHeight,
      num maxWidth,
      num maxHeight,
      String fillColor,
      bool imageSmoothingEnabled,
      num /*enum ImageSmoothingQuality*/ imageSmoothingQuality});
}

@anonymous
@JS()
abstract class SetDataOptions {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get rotate;
  external set rotate(num v);
  external num get scaleX;
  external set scaleX(num v);
  external num get scaleY;
  external set scaleY(num v);
  external factory SetDataOptions(
      {num x,
      num y,
      num width,
      num height,
      num rotate,
      num scaleX,
      num scaleY});
}

@anonymous
@JS()
abstract class SetCanvasDataOptions {
  external num get left;
  external set left(num v);
  external num get top;
  external set top(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external factory SetCanvasDataOptions(
      {num left, num top, num width, num height});
}

@anonymous
@JS()
abstract class SetCropBoxDataOptions {
  external num get left;
  external set left(num v);
  external num get top;
  external set top(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external factory SetCropBoxDataOptions(
      {num left, num top, num width, num height});
}

@anonymous
@JS()
abstract class Options {
  external num get aspectRatio;
  external set aspectRatio(num v);
  external bool get autoCrop;
  external set autoCrop(bool v);
  external num get autoCropArea;
  external set autoCropArea(num v);
  external bool get background;
  external set background(bool v);
  external bool get center;
  external set center(bool v);
  external bool get checkCrossOrigin;
  external set checkCrossOrigin(bool v);
  external bool get checkOrientation;
  external set checkOrientation(bool v);
  external void crop(CustomEvent event);
  external bool get cropBoxMovable;
  external set cropBoxMovable(bool v);
  external bool get cropBoxResizable;
  external set cropBoxResizable(bool v);
  external void cropend(CustomEvent event);
  external void cropmove(CustomEvent event);
  external void cropstart(CustomEvent event);
  external Data get data;
  external set data(Data v);
  external num /*enum DragMode*/ get dragMode;
  external set dragMode(num /*enum DragMode*/ v);
  external bool get guides;
  external set guides(bool v);
  external bool get highlight;
  external set highlight(bool v);
  external num get initialAspectRatio;
  external set initialAspectRatio(num v);
  external num get minCanvasHeight;
  external set minCanvasHeight(num v);
  external num get minCanvasWidth;
  external set minCanvasWidth(num v);
  external num get minContainerHeight;
  external set minContainerHeight(num v);
  external num get minContainerWidth;
  external set minContainerWidth(num v);
  external num get minCropBoxHeight;
  external set minCropBoxHeight(num v);
  external num get minCropBoxWidth;
  external set minCropBoxWidth(num v);
  external bool get modal;
  external set modal(bool v);
  external bool get movable;
  external set movable(bool v);
  external dynamic /*Element|List<Element>|NodeList|String*/ get preview;
  external set preview(dynamic /*Element|List<Element>|NodeList|String*/ v);
  external void ready(CustomEvent event);
  external bool get responsive;
  external set responsive(bool v);
  external bool get restore;
  external set restore(bool v);
  external bool get rotatable;
  external set rotatable(bool v);
  external bool get scalable;
  external set scalable(bool v);
  external bool get toggleDragModeOnDblclick;
  external set toggleDragModeOnDblclick(bool v);
  external num /*enum ViewMode*/ get viewMode;
  external set viewMode(num /*enum ViewMode*/ v);
  external num get wheelZoomRatio;
  external set wheelZoomRatio(num v);
  external void zoom(CustomEvent event);
  external bool get zoomOnTouch;
  external set zoomOnTouch(bool v);
  external bool get zoomOnWheel;
  external set zoomOnWheel(bool v);
  external bool get zoomable;
  external set zoomable(bool v);
}

// End module Cropper
@JS()
class Cropper {
  // @Ignore
  Cropper.fakeConstructor$();
  external factory Cropper(dynamic /*ImageElement|CanvasElement*/ element,
      [Options options]);
  external Cropper clear();
  external Cropper crop();
  external Cropper destroy();
  external Cropper disable();
  external Cropper enable();
  external CanvasData getCanvasData();
  external ContainerData getContainerData();
  external CropBoxData getCropBoxData();
  external CanvasElement getCroppedCanvas([GetCroppedCanvasOptions options]);
  external Data getData([bool rounded]);
  external ImageData getImageData();
  external Cropper move(num offsetX, [num offsetY]);
  external Cropper moveTo(num x, [num y]);
  external Cropper replace(String url, [bool onlyColorChanged]);
  external Cropper reset();
  external Cropper rotate(num degree);
  external Cropper rotateTo(num degree);
  external Cropper scale(num scaleX, [num scaleY]);
  external Cropper scaleX(num scaleX);
  external Cropper scaleY(num scaleY);
  external Cropper setAspectRatio(num aspectRatio);
  external Cropper setCanvasData(SetCanvasDataOptions data);
  external Cropper setCropBoxData(SetCropBoxDataOptions data);
  external Cropper setData(SetDataOptions data);
  external Cropper setDragMode(num /*enum Cropper.DragMode*/ dragMode);
  external Cropper zoom(num ratio);
  external Cropper zoomTo(num ratio,
      [dynamic /*{ x: number; y: number }*/ pivot]);
}

// Module cropperjs
/* WARNING: export assignment not yet supported. */

// End module cropperjs

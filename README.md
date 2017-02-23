# 機能一覧
 - - - 
## Extension

### Array
- 指定された値を削除する。
```removeValue(_ :T)```

-  指定された二つのindexの値を入れ替える。
```replacement(index1 :Int, index2 :Int)```

### Date
- それぞれInt型で返す計算プロパティ
```year``` ```month``` ```day``` 

- Stringに変換する
```stringFormat(format: DateStirngformatType) -> String```
(DateStringformatTypeは同じファイルに記述)

### Double
- 引数に渡された小数点第XX位で四捨五入する。
```roundDecimal(decimalPlace: Int)```

- ~ で切り捨てる。
```floorDecimal(decimalPlace: Int)```

-  ~ で切り上げる。
```ceilDecimal(decimalPlace: Int)```

## Cocoa Extension

### NSObject
- 自身のクラス名をStringで返すプロパティ。
```className``` 

### NSPredicate
- 期間をDate型で指定するとその期間内かどうかを判別するPredicateを返す。(nilなら無期限)
```init(_ : String, fromDate: NSDate?, toDate: NSDate?)```

## UIKit Extension
### CGPoint
-  OperaterのExtension、CGPoint同士で算術演算子(+, -, *, /)と複合代入演算子(+=, -= , *=, /=)を使えるように。

-  中心点（原点) とそこからの 半径 及び 位置 を渡すことで円形に配置するポイントを返す。
```init(originPoint: CGPoint, angle: CGFloat, radius: CGFloat)```

- 二点間の角度を求める。
```getAngle(a:CGPoint, b:CGPoint) -> Double```
```getAngle(targetPoint: CGPoint) -> Double```

- 二点間の距離を求める。
```distancePointsBetween(firstP :CGPoint, secondP :CGPoint) -> CGFloat```

### CGSize
-  OperaterのExtension、CGSize同士で算術演算子(+, -, *, /)と複合代入演算子(+=, -= , *=, /=)を使えるように。
- 正方形のCGSizeイニシャライザ。 ```init(sideLength:CGFloat)```
- 大きい辺の値を返す。 ``biggast: CGFloat```
- 横幅 / 縦幅　を返す。 ```ratio: CGFloat```

### CGRect
- OperaterのExtension、CGPointがCGRect内にあるかどうかを判別する。```CGRect ~= CGPoint```
- 右下の座標 ```endPoint: CGPoint```
- 右上の座標 ```topRightPoint: CGPoint```
- 右下の座標 ```bottomLeftPoint: CGPoint```

### CGContext
- ２点間をつなぐContextを生成する。
```conectPoint(_ :CGPoint,_ :CGPoint, color: UIColor, lineWidth:CGFloat = 2.0) -> CGContext```

### CGAffineTransform
- 角度(弧度法)
```radian: CGFloat```

- 角度(度数法)
```degree: CGFloat```

- 倍率
```scale: CGFloat```

### CALayer
- 簡易的に丸くする。
```adjustCircle()```

### UIColor
- テキストから生成。  ex: ("255,000,255") -> 紫色ができる。
```init(commaComponentsString: String)```

### UIImage
- 正方形に切り取る。(小さい辺に合わせる)
```cropImageToSquare() -> UIImage?```

- 指定したRectで切り取る。
```clopWithRect(_ rect:CGRect) -> UIImage```

- リサイズ
```resizeImage(size: CGSize)-> UIImage```

- 撮影時のメタデータによる回転をリセットする。
```resetDirection() ->UIImage```

### UIGestureRecognizer
- クロージャ形式でRecognizerのアクションを追加する。
```init(trailingClosure: (UIGestureRecognizer) -> ())```

### UIView
- subViewを全て削除する。
```removeAllSubviews(_ parentView: UIView)```
```removeAllSubviews()```

- 指定した部分だけを表示するようにする。(マスクを追加する)
```setMaskRect(rect: CGRect)```

- 指定した部分を表示しないようにする。(ビューをくり抜く)
```setClipRect(rect: CGRect)```

- 親ビューとその子ビュー(さらにその子ビューも可)を渡すことで親ビューのoriginから子ビューのoriginまでの距離を求める。
```getRelativePoint(parentView: UIView, subView: UIView)```
```getRelativePoint(subView: UIView)```

- 単純なポップアップをするUIViewAnimationを実行させる。
```simplePopUpAnimation(_ duration:Double = 0.15)```

- ビューのスクリーンショットをUIImageで返す。
```generateScreenshot() -> UIImage```

- addSubviewして、四隅をピッタリ合わせる制約を追加する。
```addSubviewWithAutoLayout(_ childView: UIView)```

- storyBoardからlayer関連も値も設定できるようにする。
```cornerRadius: CGFloat``` ```borderColor: UIColor?``` ```borderWidth: CGFloat``` ```masksToBounds: Bool``` ```circle: Bool```

### UIButton
- クロージャ形式でボタンのアクションを追加する。
```actionHandle(controlEvents :UIControlEvents, ForAction :() -> Void) ```

### UIScrollView
- 中心を取得、指定できる計算プロパティ
```contentOffsetCenter:CGPoint```

- contentViewがはみ出ないようにContentSizeを調節する。
```adjustContentSize(_ margin:CGFloat = 0.0)```

### UIViewController
- バー関連の計算プロパティを追加。
```stateBarHeight:CGFloat```  ```navBarHeight:CGFloat``` ```topBarHeight```

- UIViewControllerをiPadのUIAlertControllerのようにポップアップ表示する。

```
presentPopver(
	viewController: UIViewController!,
	size: CGSize,
	sourceView: UIView,
	popoverDelegate: UIPopoverPresentationControllerDelegate,
	direction: UIPopoverArrowDirection = .down)
```

### UIAlertController
- 簡易アラートを出す。
```showOneButtonAlert(_ title: String?,message: String?, controler:UIViewController)```

#### UIApplication
- 最前面のViewControllerを取得する。
```shared.topViewController```

- 最前面のNavigationControllerを取得する。
```shared.NavigationController```

## AVFoundation Extension
### AVAsset
-  指定した秒数のスナップショットを返す。
```generateSnapshotImage(captureSecond: Double, imageSize: CGSize) -> UIImage```

-  mp4に動画を書き出し、callBackを実行する。
```exportVideo(callback:@escaping ((URL) -> Void))```
```exportVideo(_: AVAsset!, callback: @escaping ((URL) -> Void))```

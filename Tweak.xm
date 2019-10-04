%hook T1AppSplitViewController

@interface T1AppSplitViewController
@property (nonatomic, getter=isDashOpen) BOOL dashOpen;
@property UIView *view;
@end
 -(BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer
{
  CGPoint velocity = [gestureRecognizer velocityInView:self.view];
  if (self.dashOpen){
    return true;
  }
  else if (velocity.x > 0){
    return true;
  }
  else{
    return false;
  }
  %log;
}

%end

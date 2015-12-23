%hook T1ComposeViewController
-(void)sendButtonPressed:(id)arg1{
  UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ついったー" message:@"ほんとにいいのそれでいいの？？？?" preferredStyle:UIAlertControllerStyleAlert];
  [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    %orig;
  }]];
  [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
  }]];
  [self presentViewController:alertController animated:YES completion:nil];
}
%end
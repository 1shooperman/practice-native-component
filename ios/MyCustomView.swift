//
//  MyCustomView.swift
//  AwesomeProject
//
//  Created by Brandon  Shoop on 8/19/21.
//

import UIKit

class MyCustomView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
 
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupView()
  }
 
  private func setupView() {
    self.backgroundColor = self.status ? .green : .red
   
    self.isUserInteractionEnabled = true
  }
  
  @objc var status = false {
      didSet {
          self.setupView()
      }
  }
   
  @objc var onClick: RCTBubblingEventBlock?
   
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let onClick = self.onClick else { return }
   
      let params: [String : Any] = ["value1":"react demo","value2":1]
      onClick(params)
  }

}


@objc (RCTMyCustomViewManager)
class RCTMyCustomViewManager: RCTViewManager {
 
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
 
  override func view() -> UIView! {
    return MyCustomView()
  }
 
}

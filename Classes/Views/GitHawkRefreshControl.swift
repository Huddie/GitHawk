//
//  GitHawkRefreshControl.swift
//  PullToRefresh
//
//  Created by Ehud Adler on 8/6/18.
//  Copyright © 2018 Ehud Adler. All rights reserved.
//

import UIKit

class GitHawkRefreshControl: UIRefreshControl {
  
  public var progress: CGFloat = 0.0

  private let BIRD_INSET:CGFloat = 20
  private let REFRESH_INSET:CGFloat = 5
  private let DEGRESS_TO_ROTATE:CGFloat = 180
  
  // The amount behind the pull to refresh frame where the animation will continue until
  private let RUBBER_BAND_AMOUNT:CGFloat = 180

  
  private let birdImageView = UIImageView(image: #imageLiteral(resourceName: "splash"))
  private let branchesImageView = UIImageView(image: #imageLiteral(resourceName: "splash_branches"))
  
  // The tableview could start at a different Y offset.
  private var tableViewInitialYOffset: CGFloat?
  
  required override init() {
    super.init()
    tintColor = .clear
    setUpView()
  }
  
  override func didMoveToSuperview() {
      super.didMoveToSuperview()
      guard let sup = self.superview as? UIScrollView else { return }
      self.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height * 2) // Double height for bigger image
      tableViewInitialYOffset = sup.contentOffset.y
      sup.addObserver(self,
                      forKeyPath: #keyPath(UIScrollView.contentOffset), options: [.old, .new], context: nil)

  }
  
  override func beginRefreshing() {
    super.beginRefreshing()
    _addBirdAnimation()
  }
  
  override func endRefreshing() {
    super.endRefreshing()
    birdImageView.layer.removeAllAnimations()
  }
  
  private func setUpView() {
    
    let imageHeight = self.frame.height - REFRESH_INSET // 10 padding

    // Bird
    self.addSubview(birdImageView)
    
    birdImageView.translatesAutoresizingMaskIntoConstraints = false
    birdImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    birdImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    birdImageView.widthAnchor.constraint(equalToConstant: imageHeight - BIRD_INSET).isActive = true
    birdImageView.heightAnchor.constraint(equalToConstant: imageHeight - BIRD_INSET).isActive = true
    
    // Branches
    self.addSubview(branchesImageView)
    
    branchesImageView.translatesAutoresizingMaskIntoConstraints = false
    branchesImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    branchesImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    branchesImageView.widthAnchor.constraint(equalToConstant: imageHeight).isActive = true
    branchesImageView.heightAnchor.constraint(equalToConstant: imageHeight).isActive = true
    
  }
  
  override func observeValue(forKeyPath keyPath: String?,
                             of object: Any?,
                             change: [NSKeyValueChangeKey : Any]?,
                             context: UnsafeMutableRawPointer?) {
    
    if keyPath == #keyPath(UIScrollView.contentOffset) {
      guard let scrollView = object as? UIScrollView,
        let initialYOffset = tableViewInitialYOffset else { return }
      
      let adjOffset = initialYOffset - scrollView.contentOffset.y
      if(adjOffset > 0) // > 0 because both initialYOffset & scrollView.contentOffset.y are 0 when pulling
      {
        self.updateProgress(adjOffset)
      }
    }
  }
  
  private func updateProgress(_ yOffset: CGFloat)
  {
    progress = (yOffset * 100 / (self.frame.height + RUBBER_BAND_AMOUNT)) / 100 // Convert to 0 - 1 scale
    if(progress >= 0 && progress <= 1)
    {
      branchesImageView.transform = CGAffineTransform(rotationAngle: (DEGRESS_TO_ROTATE * progress) * (CGFloat.pi / 180))
    }
  }
  
  required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
  
  private func _addBirdAnimation()
  {
    let pulseAnimation = CABasicAnimation(keyPath: "transform.scale")
    
    pulseAnimation.autoreverses = true
    pulseAnimation.repeatCount = .infinity
    pulseAnimation.fromValue = 1.0
    pulseAnimation.toValue = 0.9
    pulseAnimation.duration = 1
    pulseAnimation.fillMode = kCAFillModeForwards
    pulseAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
    
    birdImageView.layer.add(pulseAnimation, forKey: "scaling")
  }
}

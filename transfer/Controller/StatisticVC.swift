//
//  StatisticVC.swift
//  transfer
//
//  Created by macOS on 8/22/20.
//  Copyright © 2020 huy. All rights reserved.
//

import UIKit
import KDCircularProgress

class StatisticVC: UIViewController {
    
    @IBOutlet weak var viewDiskSpace:UIView!
    @IBOutlet weak var viewPhotoLibrary:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupUI(){
        self.setupProgressView()
    }
    
    func setupProgressView(){
        let progressDiskSpace = KDCircularProgress(frame: CGRect(x: 0, y: 0, width: 300.0, height: 300.0))
        progressDiskSpace.startAngle = -90
        progressDiskSpace.progressThickness = 0.2
        progressDiskSpace.trackThickness = 0.6
        progressDiskSpace.clockwise = true
        progressDiskSpace.gradientRotateSpeed = 2
        progressDiskSpace.roundedCorners = false
        progressDiskSpace.glowMode = .forward
        progressDiskSpace.glowAmount = 0.9
        progressDiskSpace.set(colors: UIColor.cyan ,UIColor.white, UIColor.magenta, UIColor.white, UIColor.orange)
        progressDiskSpace.center = CGPoint(x: view.center.x, y: view.center.y + 25)
        self.viewDiskSpace.addSubview(progressDiskSpace)
    }


}

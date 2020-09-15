//
//  UpgrateToPremiumVC.swift
//  transfer
//
//  Created by macOS on 8/21/20.
//  Copyright © 2020 huy. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import RxGesture

class UpgrateToPremiumVC: UIViewController {
    
    @IBOutlet weak var viewIntro:UIView!
    @IBOutlet weak var viewWeekly:UIView!
    @IBOutlet weak var viewYearly:UIView!
    @IBOutlet weak var viewLifeTime:UIView!
    @IBOutlet weak var lbWeekly:UILabel!
    @IBOutlet weak var lbYearly:UILabel!
    @IBOutlet weak var lbLifeTime:UILabel!
    
    @IBOutlet weak var btnContinue:UIButton!
    @IBOutlet weak var btnTerm:UIButton!
    @IBOutlet weak var btnPolicy:UIButton!
    
    let disposeBag = DisposeBag()
    
    override func viewWillAppear(_ animated: Bool) {
        self.setupDefautColor()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.event()
    }
    
    func event(){
        self.eventTapViewPrice()
        self.eventBtnContinue()
    }
    
    func setupUI(){
        self.cornerRadiusAndBorder()
    }
    
    func setupDefautColor(){
        self.lbLifeTime.backgroundColor = UIColor.init(red: 77.0/255.0, green: 96.0/255.0, blue: 200.0/255.0, alpha: 1.0)
        self.lbYearly.backgroundColor = UIColor.init(red: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
        self.lbWeekly.backgroundColor = UIColor.init(red: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
        
        self.viewLifeTime.layer.borderColor = CGColor.init(srgbRed: 77.0/255.0, green: 96.0/255.0, blue: 200.0/255.0, alpha: 1.0)
        self.viewWeekly.layer.borderColor = CGColor.init(srgbRed: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
        self.viewYearly.layer.borderColor = CGColor.init(srgbRed: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
    }
    
    func cornerRadiusAndBorder(){
        //corner radius
        self.viewIntro.cornerRadius(radius: 12.0)
        self.btnContinue.cornerRadius(radius: 12.0)
        self.viewWeekly.cornerRadius(radius: 10.0)
        self.viewYearly.cornerRadius(radius: 10.0)
        self.viewLifeTime.cornerRadius(radius: 10.0)
        self.lbWeekly.roundCorners(corners: [.topLeft,.topRight], radius: 10)
        self.lbYearly.roundCorners(corners: [.topLeft,.topRight], radius: 10)
        self.lbLifeTime.roundCorners(corners: [.topLeft,.topRight], radius: 10)
        
        self.viewWeekly.layer.borderWidth = 2.0
        self.viewYearly.layer.borderWidth = 2.0
        self.viewLifeTime.layer.borderWidth = 2.0
        
        
    }
    
    
//MARK: - EVENT
    func eventBtnContinue(){
        self.btnContinue.rx.controlEvent(.touchUpInside).subscribe(onNext: { (_) in
            let sb = UIStoryboard.init(name: "Feature", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "StatisticVC") as! StatisticVC
            self.navigationController?.pushViewController(vc, animated: true)
        }).disposed(by: self.disposeBag)
    }
    
    func eventTapViewPrice(){
        self.viewLifeTime.rx.gesture(.tap())
            .subscribe(onNext: { (_) in
                self.lbLifeTime.backgroundColor = UIColor.init(red: 77.0/255.0, green: 96.0/255.0, blue: 200.0/255.0, alpha: 1.0)
                self.lbYearly.backgroundColor = UIColor.init(red: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
                self.lbWeekly.backgroundColor = UIColor.init(red: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
                
                self.viewLifeTime.layer.borderColor = CGColor.init(srgbRed: 77.0/255.0, green: 96.0/255.0, blue: 200.0/255.0, alpha: 1.0)
                self.viewWeekly.layer.borderColor = CGColor.init(srgbRed: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
                self.viewYearly.layer.borderColor = CGColor.init(srgbRed: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
            }).disposed(by: self.disposeBag)
        
        self.viewYearly.rx.gesture(.tap())
        .subscribe(onNext: { (_) in
            self.lbYearly.backgroundColor = UIColor.init(red: 77.0/255.0, green: 96.0/255.0, blue: 200.0/255.0, alpha: 1.0)
            self.lbLifeTime.backgroundColor = UIColor.init(red: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
            self.lbWeekly.backgroundColor = UIColor.init(red: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
            
            self.viewYearly.layer.borderColor = CGColor.init(srgbRed: 77.0/255.0, green: 96.0/255.0, blue: 200.0/255.0, alpha: 1.0)
            self.viewWeekly.layer.borderColor = CGColor.init(srgbRed: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
            self.viewLifeTime.layer.borderColor = CGColor.init(srgbRed: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
        }).disposed(by: self.disposeBag)
        
        self.viewWeekly.rx.gesture(.tap())
        .subscribe(onNext: { (_) in
            self.lbWeekly.backgroundColor = UIColor.init(red: 77.0/255.0, green: 96.0/255.0, blue: 200.0/255.0, alpha: 1.0)
            self.lbLifeTime.backgroundColor = UIColor.init(red: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
            self.lbYearly.backgroundColor = UIColor.init(red: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)

            
            self.viewWeekly.layer.borderColor = CGColor.init(srgbRed: 77.0/255.0, green: 96.0/255.0, blue: 200.0/255.0, alpha: 1.0)
            self.viewYearly.layer.borderColor = CGColor.init(srgbRed: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
            self.viewLifeTime.layer.borderColor = CGColor.init(srgbRed: 154.0/255.0, green: 154.0/255.0, blue: 154.0/255.0, alpha: 1.0)
        }).disposed(by: self.disposeBag)
    }
    

    

}

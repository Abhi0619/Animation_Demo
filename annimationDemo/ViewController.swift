//
//  ViewController.swift
//  annimationDemo
//
//  Created by IPS MAC OS 2 on 01/10/21.
//

import UIKit
import Motion
class ViewController: UIViewController {
    
    var currentAnnimation = 0
    var lblCentre : CGPoint = .zero
    @IBOutlet weak var animatedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.animatedView.isHidden = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.lblCentre = UIScreen.main.bounds.center
    }
    @IBAction func TapAction(_ sender: UIButton) {
        self.animatedView.center = CGPoint(x: UIScreen.main.bounds.size.width  / 2,
                                                  y: UIScreen.main.bounds.size.height / 2)
        self.animatedView.isHidden = false
        self.animatedView.animate(.delay(0.0),.duration(1),.scale(1.5),.background(color: UIColor.clear),.completion({
            self.animatedView.animate(.delay(1.0),.duration(1),.scale(0.2),.position(x: self.lblCentre.x - 42, y: 62),.background(color: UIColor.clear),.completion({
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                    self.animatedView.isHidden = true
                }
            }))
        }))
      //  sender.isHidden = true
////        UIView.animate(withDuration: 1, delay: 0, options: []) {
//        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: []) {
//            self.annimatedImage.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
//            let seconds = 2.0
//            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
//                self.annimatedImage.transform = CGAffineTransform(translationX: 0, y: -256)
//            }
//            DispatchQueue.main.asyncAfter(deadline: .now() + seconds + 0.1){
//                self.annimatedImage.alpha = 0.0
//            }
////            switch self.currentAnnimation{
////            case 0:
////                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
////               break
////            case 1:
////                self.imageView.transform = .identity
////                break
////            case 2:
////                self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
////                break
////            case 3:
////                self.imageView.transform = .identity
////                break
////            case 4:
////                self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
////                break
////            case 5:
////                self.imageView.transform = .identity
////                break
////            case 6:
////                self.imageView.alpha = 0.1
////                self.imageView.backgroundColor = .green
////                break
////            case 7:
////                self.imageView.alpha = 1
////                self.imageView.backgroundColor = .clear
////                break
////            default :
////                break
////            }
//        } completion: { finshed in
//
//            sender.isHidden = false
//        }
//
//
//
//
//        currentAnnimation += 1
//        if currentAnnimation > 7{
//            currentAnnimation = 0
//        }
//    }
    
    }

}

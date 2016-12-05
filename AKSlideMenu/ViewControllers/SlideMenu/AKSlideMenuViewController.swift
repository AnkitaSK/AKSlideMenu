//
//  AKSlideMenuViewController.swift
//  AKSlideMenu
//
//  Created by ankita on 30/11/16.
//  Copyright © 2016 photonphoton. All rights reserved.
//

import UIKit

class AKSlideMenuViewController: UIViewController {
    
    @IBOutlet weak var rightContainerView: UIView!
    @IBOutlet weak var leftContainerView: UIView!
    @IBOutlet weak var leftViewWidthConstraint: NSLayoutConstraint!
    var isToggledLeft = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addPanGesture()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slideMenuButtonClicked(sender: UIButton) {
        if !isToggledLeft {
            leftViewWidthConstraint.constant = view.frame.width - 50
        }
        else {
            leftViewWidthConstraint.constant = 0
        }
        isToggledLeft = !isToggledLeft
    }
    
    func addPanGesture() {
        let panGestureRecogniser:UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
        rightContainerView.addGestureRecognizer(panGestureRecogniser)
    }
    
    func handlePanGesture(panGesture:UIPanGestureRecognizer) {
        switch panGesture.state {
        case UIGestureRecognizerState.Began:
            break
        case UIGestureRecognizerState.Changed:
            if !isToggledLeft {
//                move to right
                let translation = panGesture.translationInView(view)
                if <#condition#> {
                    <#code#>
                }
            }
            else {
//                move to left
            }
            break
        case UIGestureRecognizerState.Ended, UIGestureRecognizerState.Cancelled:
            break
        default:
            break
        }
    }

//    func setUpView() {
//        setNavigationBarItem()
//    }
    
//    override func toggleLeft() {
//        leftViewWidthConstraint.constant = 200
//    }
    
//    override func prefersStatusBarHidden() -> Bool {
//        return true
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

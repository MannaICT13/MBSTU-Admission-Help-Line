//
//  HomeViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 9/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARk:- Properties
    
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var seatPlanBtnOutlet: UIButton!
    @IBOutlet weak var resultBtnOutlet: UIButton!
    @IBOutlet weak var vivaBtnOutlet: UIButton!
    @IBOutlet weak var varsityWebBtnOutlet: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    
    
    var imageArray : [UIImage] = [#imageLiteral(resourceName: "OldAcademic"),#imageLiteral(resourceName: "ZiaHall"),#imageLiteral(resourceName: "OldAcademic"),#imageLiteral(resourceName: "Academic-1"),#imageLiteral(resourceName: "IMG_5808(1)"),#imageLiteral(resourceName: "TeachersDorm"),#imageLiteral(resourceName: "BBSMRH-2"),#imageLiteral(resourceName: "ZiaHall"),#imageLiteral(resourceName: "OldAcademic"),#imageLiteral(resourceName: "decoration(1)"),#imageLiteral(resourceName: "admin(5)"),#imageLiteral(resourceName: "OldAcademic"),#imageLiteral(resourceName: "admin(5)"),#imageLiteral(resourceName: "prottoy71(1)")]
    
    var timer = Timer()
    var count = 0
    
    
    //MARk:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()
        utilitieManager()
        pageView.currentPage = 0
        pageView.numberOfPages = imageArray.count
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
        
    }
    
    
    //MARK:- Handlers
    
    @objc func changeImage(){
        
        if count < imageArray.count {
            
            let index = IndexPath.init(item: count, section: 0)
            self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageView.currentPage = count
            count += 1
            
        }else{
            
            count = 0
            let index = IndexPath.init(item: count, section: 0)
            self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            pageView.currentPage = count
            
        }
        
        
        
    }
    
    func utilitieManager(){
        
        logoImage.image = UIImage(named: "logo.png")
        Utilities.roundBtnFill(button: seatPlanBtnOutlet)
        Utilities.roundBtnFill(button: resultBtnOutlet)
        Utilities.roundBtnFill(button: vivaBtnOutlet)
        Utilities.roundBtnFill(button: varsityWebBtnOutlet)
        
    }

    @IBAction func seatPlanBtnAction(_ sender: Any) {
        let seatVC = self.storyboard?.instantiateViewController(identifier: "SeatPlanViewController") as! SeatPlanViewController
        self.navigationController?.pushViewController(seatVC, animated: true)
        
    }
    @IBAction func resultBtnAction(_ sender: Any) {
        let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultViewController") as! ResultViewController
        self.navigationController?.pushViewController(resultVC, animated: true)
        
    }
    
    @IBAction func vivaBtnAction(_ sender: Any) {
        let vivaVC = self.storyboard?.instantiateViewController(identifier: "VivaResultViewController") as! VivaResultViewController
        self.navigationController?.pushViewController(vivaVC, animated: true)
    }
    
    @IBAction func varsityWebBtnAction(_ sender: Any) {
        
        if let url = URL(string: "https://mbstu.ac.bd/"){
            UIApplication.shared.open(url)
        }
        
    }
    
    
}
extension HomeViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! AutoImageSliderCell
        cell.slideImageCell.image = imageArray[indexPath.row]
        
        return cell
    }
    
    
}

extension HomeViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = collectionView.frame.size
        return CGSize(width: size.width, height: size.height)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}

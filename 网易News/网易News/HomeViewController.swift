//
//  HomeViewController.swift
//  网易News
//
//  Created by CallMeDaKing on 2017/12/4.
//  Copyright © 2017年 CallMeDaKing. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //设置导航栏
        setUpNavigationBar()
    }
}

extension HomeViewController{
    
    private func setUpNavigationBar(){
        //设置背景颜色
    navigationController?.navigationBar.setBackgroundImage(getImageFromColor(color: UIColor.red), for: .default)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:UIImage(named:"btn_search_clicked"), style: .plain, target: self, action: #selector(seachItemClick))
    }
    private func getImageFromColor(color : UIColor) -> UIImage{
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let contenx = UIGraphicsGetCurrentContext()
        contenx?.setFillColor(color.cgColor)
        contenx?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
extension HomeViewController{
    @objc func seachItemClick(){
        print("----------")
    }
}

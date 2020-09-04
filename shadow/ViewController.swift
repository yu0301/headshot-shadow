//
//  ViewController.swift
//  IronManShadow
//
//  Created by 陳冠諭 on 2020/9/2.
//  Copyright © 2020 KuanYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myImageView: UIImageView = {
        var myImageView = UIImageView(frame: CGRect(x: 50, y: 100, width: 250, height: 250))
        myImageView.image = UIImage(named: "fatOrange")
        myImageView.clipsToBounds = true
        myImageView.layer.cornerRadius = 125
        return myImageView
    }()
    
    var shadow: UIImageView = {
        var shadow = UIImageView(frame: CGRect(x: 50, y: 100, width: 250, height: 250))
        
        //圓角半徑
        shadow.layer.cornerRadius = 130
        //背景顏色
        shadow.backgroundColor = .white
        //陰影不透明度
        shadow.layer.shadowOpacity = 0.5
        //陰影的偏移量
        shadow.layer.shadowOffset = CGSize(width: 15, height: 15)
        //模糊半徑
        shadow.layer.shadowRadius = 10
        //123
        return shadow
    }()
    
    override func viewDidLoad() {
        self.view.addSubview(shadow)
        self.view.addSubview(myImageView)
        super.viewDidLoad()
    }
}



//1.每個任務要討論時間
//2.任務的排程要有相依性
//3.評估任務時間(rearch的研究時間也要評估)
//4.為什麼要用token

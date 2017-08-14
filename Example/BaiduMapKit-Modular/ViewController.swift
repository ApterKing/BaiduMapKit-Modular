//
//  ViewController.swift
//  BaiduMapKit-Modular
//
//  Created by wangcccong@foxmail.com on 08/11/2017.
//  Copyright (c) 2017 wangcccong@foxmail.com. All rights reserved.
//

import UIKit
import BaiduMapAPI_Base
import BaiduMapAPI_Map

class ViewController: UIViewController {

    let mapView = BMKMapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        mapView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        self.view.addSubview(mapView)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView.viewWillAppear()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mapView.viewWillDisappear()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

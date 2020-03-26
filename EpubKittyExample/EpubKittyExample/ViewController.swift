//
//  ViewController.swift
//  EpubKittyExample
//
//  Created by 小发工作室 on 2020/3/26.
//  Copyright © 2020 小发工作室. All rights reserved.
//

import UIKit
import epub_kitty

class ViewController: UIViewController,FolioReaderPageDelegate{
    let folioReader = FolioReader()
    var config: EpubConfig?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
//        self.config = EpubConfig.init(Identifier: "Identifier",tintColor: "color",allowSharing: allowSharing,scrollDirection: scrollDirection)
//
//        
//        folioReader.presentReader(parentViewController: readerVc, withEpubPath: epubPath, andConfig: self.config!.config, shouldRemoveEpub: true)
          folioReader.readerCenter?.pageDelegate = self
    }


    public func pageWillLoad(_ page: FolioReaderPage) {
        
        print("page.pageNumber:"+String(page.pageNumber))


    }
}


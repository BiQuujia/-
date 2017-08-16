//
//  JJLanguageLearningViewController.swift
//  JJLearnIngHelper
//
//  Created by 贾文鹏 on 2017/8/15.
//  Copyright © 2017年 贾文鹏. All rights reserved.
//做一个简单的小测试

import UIKit

class JJLanguageLearningViewController: JJBaseViewController {

    @IBOutlet weak var JJCollectionView: UICollectionView!
    //设置头视图高度
    let heightHeader = SCREEN_HEIGHT * 2/7
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CollectionviewInit()
        // Do any additional setup after loading the view.
    }

    
    func CollectionviewInit(){
        //复位
        self.automaticallyAdjustsScrollViewInsets = false
        let layout = UICollectionViewFlowLayout()
        //设置四周得边缘距离
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
        layout.itemSize = CGSize.init(width: SCREEN_WIDTH, height: 200)
        layout.headerReferenceSize = CGSize(width: SCREEN_WIDTH, height: heightHeader)
        JJCollectionView.collectionViewLayout = layout
        let nib = UINib(nibName: "JJLanguageCell", bundle: nil)
        JJCollectionView.register(nib, forCellWithReuseIdentifier: "JJLanguageCell")
        //注册页眉的类
       JJCollectionView.register(HeaderView.self , forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "Header")
        
    }
    
    
    

}


//在扩展中实现collectionview的初始化及实现方法
extension JJLanguageLearningViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "JJLanguageCell", for: indexPath as IndexPath)
        
        return cell
    }
    
    // 返回自定义HeadView
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
            var JJHeaderView : HeaderView?
            //如果是页眉，那么取出一个页眉对象，然后赋值
            if kind == UICollectionElementKindSectionHeader {
                JJHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "Header", for: indexPath) as? HeaderView
        }
            return JJHeaderView!
        
    }

    
}





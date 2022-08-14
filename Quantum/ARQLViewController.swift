//
//  ARQLViewController.swift
//  Quantum
//
//  Created by Chaonan Lin on 2022/8/8.
//

import UIKit
import QuickLook
import ARKit

class ARQLViewController: UIViewController, QLPreviewControllerDataSource {
    let assetName = "Model"
    let assetType = "reality"
    let allowsContentScaling = true
    let canonicalWebPageURL = URL(string: "https://github.com/ynagatomo/ARQLSanta")
    
    override func viewDidAppear(_ animated: Bool) {
        let previewController = QLPreviewController()
        previewController.dataSource = self
        present(previewController, animated: true, completion: nil)
    }
    
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        guard let path = Bundle.main.path(forResource: assetName, ofType: assetType) else {
            fatalError("Couldn't find the supported asset file.")
        }
        let url = URL(fileURLWithPath: path)
        let previewItem = ARQuickLookPreviewItem(fileAt: url)
        previewItem.allowsContentScaling = allowsContentScaling // default = true
        previewItem.canonicalWebPageURL = canonicalWebPageURL   // default = nil
        return previewItem
    }
}

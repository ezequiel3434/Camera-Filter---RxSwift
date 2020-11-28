//
//  PhotosCollectionViewControllers.swift
//  Camera Filter - RxSwift
//
//  Created by Ezequiel Parada Beltran on 27/11/2020.
//

import Foundation
import UIKit
import Photos

class PhotosCollectionViewController: UICollectionViewController {
    
    private var images = [PHAsset]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populatePhotos()
    }
    
    private func populatePhotos(){
        PHPhotoLibrary.requestAuthorization{ [weak self] status in
            
            guard let self = self else { return }
            
            if status == .authorized {
                // access the photos from photo library
                let assets = PHAsset.fetchAssets(with: PHAssetMediaType.image, options: nil)
                
                assets.enumerateObjects { (object, count, stop) in
                    self.images.append(object)
                }
                
                self.images.reverse()
                self.collectionView.reloadData()
            }
        }
    }
}

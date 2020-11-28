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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populatePhotos()
    }
    
    private func populatePhotos(){
        PHPhotoLibrary.requestAuthorization{ status in
            if status == .authorized {
                // access the photos from photo library
                
            }
        }
    }
}

//
//  Listing.swift
//  Swiper_Playground
//
//  Created by Yuanping Song on 2/17/18.
//  Copyright © 2018 Yuanping Song. All rights reserved.
//

import Foundation
import UIKit

class Listing {
    var location : String
    var price : Double
    var quantity : Int
    var avatar : UIImage
    var date : Date
    init (location : String , price : Double , quantity : Int, avatar : UIImage, date : Date) {
        self.location = location
        self.price = price
        self.quantity = quantity
        self.avatar = avatar
        self.date = date
    }
}

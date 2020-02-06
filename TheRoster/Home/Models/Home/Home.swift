//
//  Carousel.swift
//  TheRoster
//
//  Created by SOWA KILLIAN on 04/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import UIKit

class Home {
    var carousel:Carousel
    var grid:HomeGrid
    var snacks:[Snack]
    
    init(c:Carousel, g:HomeGrid, s:[Snack]) {
        self.carousel = c
        self.grid = g
        self.snacks = s
    }
    
    static func defaultHome() -> Home {
        return Home(c:Carousel(images:[]),
                              g: HomeGrid(images:[]),
                              s: [Snack(name: "Snack1", ingredients: "Ing 1", price: "3E", quantity: 0),
                            ]
        )
    }
}

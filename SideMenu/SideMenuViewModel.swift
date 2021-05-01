//
//  SideMenuViewModel.swift
//  SideMenu
//
//  Created by Shanezzar on 28/04/2021.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case friends
    case requests
    case smashes
    case favourites
    case pokes
    case visitors
    case coins
    case settings
    
    var title: String {
        switch self {
        case .friends: return "Friends"
        case .requests: return "Requests"
        case .smashes: return "Smashes"
        case .favourites: return "Favourites"
        case .pokes: return "Pokes"
        case .visitors: return "Visitors"
        case .coins: return "Coins"
        case .settings: return "Settings"
        }
    }
     
    var imageName: String {
        switch self {
        case .friends: return "person"
        case .requests: return "person"
        case .smashes: return "person"
        case .favourites: return "person"
        case .pokes: return "person"
        case .visitors: return "person"
        case .coins: return "person"
        case .settings: return "person"
        }
    }
        
}

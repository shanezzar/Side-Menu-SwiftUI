//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by Shanezzar on 28/04/2021.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding()
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}

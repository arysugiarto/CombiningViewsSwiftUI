//
//  FavoriteButton.swift
//  CombiningViewsSwiftUI
//
//  Created by Ary Sugiarto on 12/11/22.
//

import SwiftUI

struct FavoriteButton: View{
    @Binding var isSet: Bool
    
    var body: some View{
        Button{
            isSet.toggle()
        }label: {
            Label("Toogle Favorite", systemImage: isSet ? "star.fill": "star" )
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ?.yellow : .gray)
        }
    }
}


struct FavoriteButton_Previews: PreviewProvider{
    static var previews: some View{
        FavoriteButton(isSet: .constant(true))
    }
}

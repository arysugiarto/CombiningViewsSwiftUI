//
//  CircleImage.swift
//  CombiningViewsSwiftUI
//
//  Created by Ary Sugiarto on 09/11/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Image")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray,lineWidth: 4)
            }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

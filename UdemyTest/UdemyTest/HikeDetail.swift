//
//  HikeDetail.swift
//  UdemyTest
//
//  Created by 이성현 on 2022/08/24.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL).resizable() .aspectRatio(contentMode: self.zoomed ? .fill : .fit ).onTapGesture { withAnimation { self.zoomed.toggle() }
            }
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }.navigationBarTitle(hike.name, displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "angle landing", imageURL: "tam", miles: 10.0))
    }
}

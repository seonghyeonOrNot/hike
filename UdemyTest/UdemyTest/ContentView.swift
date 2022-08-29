//
//  ContentView.swift
//  UdemyTest
//
//  Created by 이성현 on 2022/08/23.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    @State var isChecked : Bool = false
    
    func toggle(){isChecked = !isChecked}
    
    var body: some View {
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                
                HStack {
                    Button(action: toggle){
                        Image(systemName: isChecked ? "checkmark.square" : "square")
                    }.padding()
                    
                    NavigationLink(destination: HikeDetail(hike: hike)){
                        HikeCell(hike: hike)}
                }
                
            }.navigationTitle("Hikings").listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL).resizable().frame(width: 80, height: 80).cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles)) //소수점 단위 노출 설정하기
               
            }
            
        }
    }
}

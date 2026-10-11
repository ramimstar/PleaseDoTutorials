//
//  ListView.swift
//  PleaseDoTutorials
//
//  Created by ramimstar on 11/10/26.
//

import SwiftUI

struct ListView: View {
    var title:String
    var body: some View {
        VStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity,maxHeight: 40)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.orange)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white,lineWidth: 2)
                        }
                )
                .padding()
            
            
            List{
                Text("Item One")
                Text("Item Two")
                Text("Item Three")
            }
        }
    }
}

#Preview {
    ListView(title: "To Do")
}

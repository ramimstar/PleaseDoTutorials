//
//  HomeView.swift
//  PleaseDoTutorials
//
//  Created by ramimstar on 11/10/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack{
            TabView{
                ListView(title: "To Do")
                ListView(title: "To Do")
                ListView(title: "To Do")
            }
            .tabViewStyle(.page)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {
                        print("Logout")
                    }, label: {
                        Image(systemName: "person.circle")
                    })
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {
                        print("Navigation to new Item")
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
            .navigationDestination(for: String.self){_ in 
                Text("New View Here")
            }
        }
    }
}

#Preview {
    HomeView()
}

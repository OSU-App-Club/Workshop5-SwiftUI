//
//  ContentView.swift
//  DemoApp
//
//  Created by Alex on 10/26/21.
//

import SwiftUI

struct ContentView: View {
	@State var selection: String?
	
	@State var count = 15
	
    var body: some View {
		NavigationView {
			ZStack {
				NavigationLink(destination: FirstView(count: $count), tag: String(describing: FirstView.self), selection: $selection) {}
				
				
				VStack {
					Text("Hello, world!")
						.padding()
					Button {
						selection = String(describing: FirstView.self)
					} label: {
						Text("Go to first view")
					}
				}
			}
			.navigationBarTitleDisplayMode(.inline)
			.onAppear {
				print("ContentView onAppear")
			}
			.onDisappear {
				print("ContentView onDisappear")
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


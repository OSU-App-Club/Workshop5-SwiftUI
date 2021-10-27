//
//  FirstView.swift
//  DemoApp
//
//  Created by Alex on 10/26/21.
//

import SwiftUI

struct FirstView: View {
	@Binding var count: Int
	
    var body: some View {
		VStack {
			ExtractedView(count: $count)
			Button {
				count += 1
			} label: {
				Text("Increment Count")
			}
		}
		.navigationTitle("First View")
		.onAppear {
			print("FirstView onAppear")
		}
		.onDisappear {
			print("FirstView onDisappear")
		}
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
		FirstView(count: Binding.constant(0))
    }
}

struct ExtractedView: View {
	@Binding var count: Int
	
	var body: some View {
		VStack(spacing: 20) {
			Text("Hello there")
			Text("Count: \(count)")
		}
	}
}

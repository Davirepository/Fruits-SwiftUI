//
//  ContentView.swift
//  Fruits
//
//  Created by Давид on 01.05.2021.
//

import SwiftUI

struct ContentView: View {
	// MARK: - PROPERTIES

	var fruits: [Fruit] = fruitsData

	// MARK: - BODY

	var body: some View {
		NavigationView {
			List {
				ForEach(fruits.shuffled()) {
					FruitRowView(fruit: $0)
						.padding(.vertical, 4)
				}
			}
			.navigationTitle("Fruits")
		}
	}
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(fruits: fruitsData)
			.previewDevice("iPhone 12")
	}
}

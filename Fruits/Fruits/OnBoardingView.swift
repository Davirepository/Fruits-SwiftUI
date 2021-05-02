//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Давид on 02.05.2021.
//

import SwiftUI

struct OnBoardingView: View {
	// MARK: - PROPERTIES

	var fruits: [Fruit] = fruitsData

	// MARK: - BODY
	var body: some View {
		TabView {
			ForEach(fruits) {
				FruitCardView(fruit: $0)
			}
		}
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
	}
}

// MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
	static var previews: some View {
		OnBoardingView(fruits: fruitsData)
			.previewDevice("iPhone 12")
	}
}

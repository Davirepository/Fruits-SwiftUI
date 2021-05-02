//
//  StartButtonView.swift
//  Fruits
//
//  Created by Давид on 02.05.2021.
//

import SwiftUI

struct StartButtonView: View {

	// MARK: - PROPERTIES
	@AppStorage("isOnBoarding") var isOnBoarding: Bool?

	// MARK: - BODY
	var body: some View {
		Button(action: {
			isOnBoarding = false
			print("Exit the onboarding")
		}) {
			HStack(spacing: 8) {
				Text("Start")
				Image(systemName: "arrow.right.circle")
					.imageScale(.large)
			}
			.padding(.horizontal, 16)
			.padding(.vertical, 10)
			.background(
				Capsule().strokeBorder(Color.white, lineWidth: 1.25)
			)
		}
		.accentColor(.white)
	}
}

// MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
	static var previews: some View {
		StartButtonView()
			.preferredColorScheme(.dark)
			.previewLayout(.sizeThatFits)
	}
}

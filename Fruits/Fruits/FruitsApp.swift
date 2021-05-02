//
//  FruitsApp.swift
//  Fruits
//
//  Created by Давид on 01.05.2021.
//

import SwiftUI

@main
struct FruitsApp: App {
	@AppStorage("isOnBoarding") var isOnBoarding = true

	var body: some Scene {
		WindowGroup {
			if isOnBoarding {
				OnBoardingView()
			} else {
				ContentView()
			}
		}
	}
}

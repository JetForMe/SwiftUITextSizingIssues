//
//  SwiftUISizingIssuesApp.swift
//  SwiftUISizingIssues
//
//  Created by Rick Mann on 2024-01-18.
//

import SwiftUI

@main
struct SwiftUISizingIssuesApp: App
{
	var body: some Scene
	{
		Window("SwiftUI is !Fun", id: "window")
		{
			ContentView()
				.border(.yellow, width: 1.0)
		}
		.windowResizability(.contentSize)
	}
}

struct
ContentView: View
{
	var
	body: some View
	{
		VStack(spacing: 0.0)
		{
			VStack
			{
				Text(
				"""
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
				""")
//					.lineLimit(nil)
					.border(.red, width: 1.0)
					.fixedSize(horizontal: false, vertical: true)
//					.frame(height: 100)
					.font(.system(size: 24.0))
					.padding(.top)
				
//				DebugView()					Ignore this for now.
			}
			.border(.blue, width: 1.0)
			.padding([.leading, .trailing])
			
			Image("keyboard")
		}
		.border(.green, width: 1.0)
	}
}

#Preview
{
	ContentView()
}

/**
	Ignore this for now. In my full app I have more issues with this
	view that aren’t reproduced in this sample yet.
*/

struct
DebugView : View
{
	var
	body: some View
	{
		HStack
		{
			VStack
			{
				Text("Debugging")
					.fontWeight(.bold)
					.padding(.bottom)
				
				Text("Checking Subscription")
					.fontWeight(.bold)
					.foregroundStyle(.gray)
			}
			.padding(4)
			.border(.red)
			.fixedSize(horizontal: false, vertical: false)
			
			Spacer(minLength: 0)
		}
		.padding()
	}
}

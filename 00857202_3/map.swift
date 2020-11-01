//
//  map.swift
//  00857202_3
//
//  Created by User03 on 2020/11/1.
//

import MapKit
import SwiftUI


struct map: View {
    @Binding var showMap : Bool
    @State private var annotations = [MKPointAnnotation]()
    var name : String
    var latitude : Double
    var longitude : Double

        var body: some View {
            ZStack {
                MapPresent(annotations: annotations).edgesIgnoringSafeArea(.all)
                Button(action:{
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                    annotation.title = name
                    self.annotations.append(annotation)
                }){
                    Image("start")
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height:100 )
                        .position(x:210,y:780)
                }.buttonStyle(PlainButtonStyle())
                Button(action: {
                    self.showMap.toggle()
                }){
                    Image(systemName: "xmark.circle.fill")
                        .scaleEffect(1.5)
                        .position(x:380,y:100)
                }.buttonStyle(PlainButtonStyle())
            }
        }
}

struct MapPresent: UIViewRepresentable {
  
    var annotations = [MKPointAnnotation]()
        
        func makeUIView(context: Context) -> MKMapView {
            MKMapView()
        }
        func updateUIView(_ uiView: MKMapView, context: Context) {
           
            uiView.removeAnnotations(uiView.annotations)
            uiView.addAnnotations(annotations)
            uiView.showAnnotations(annotations, animated: true)
        }
}


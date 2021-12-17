import CoreData
import CoreLocation
import MapKit
import SwiftUI

extension PositionEntity {
	
	var latitude: Double? {

		let d = Double(latitudeI)
		if d == 0 {
			return nil
		}
		return d / 1e7
	}
	
	var longitude: Double? {

		let d = Double(longitudeI)
		if d == 0 {
			return nil
		}
		return d / 1e7
	}
	
	var coordinate: CLLocationCoordinate2D? {
		if latitude != nil && longitude != nil {
			let coord = CLLocationCoordinate2D(latitude: latitude!, longitude: longitude!)

			return coord
		} else {
		   return nil
		}
	}
	
	var annotaton: MKPointAnnotation {
		let pointAnn = MKPointAnnotation()
		if coordinate != nil {

			pointAnn.coordinate = coordinate!
		}
		return pointAnn
	}
	
}
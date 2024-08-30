import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    let mapView = MKMapView()
    var abacLocations: [Abac] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup map view
        mapView.frame = self.view.bounds
        mapView.delegate = self
        self.view.addSubview(mapView)
        
        // Center the map on the ABAC Center
        let initialLocation = CLLocation(latitude: 13.612320, longitude: 100.836808)
        centerMapOnLocation(location: initialLocation)
        
        // Load and parse JSON data
        loadJSONData()
        
        // Add faculty pins to the map
        addFacultyPins()
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let regionRadius: CLLocationDistance = 1000
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func loadJSONData() {
        if let path = Bundle.main.path(forResource: "abacLocation", ofType: "json") {
            let url = URL(fileURLWithPath: path)
            do {
                let data = try Data(contentsOf: url)
                let decodedData = try JSONDecoder().decode(AbacLocationClass.self, from: data)
                abacLocations = decodedData.abacPlace
            } catch {
                print("Error parsing JSON: \(error)")
            }
        }
    }
    
    func addFacultyPins() {
        print(abacLocations)
        for place in abacLocations {
            let annotation = FacultyAnnotation(
                title: place.FacultyName,
                subtitle: place.Abbreviation,
                coordinate: CLLocationCoordinate2D(latitude: place.LocationLat, longitude: place.LocationLong)
            )
            print(annotation)
            mapView.addAnnotation(annotation)
        }
    }
//    
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        if annotation is MKUserLocation {
//            return nil
//        }
//        
//        let identifier = "FacultyPin"
//        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
//        
//        if annotationView == nil {
//            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
//            annotationView?.canShowCallout = true
//            annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
//        } else {
//            annotationView?.annotation = annotation
//        }
//        
//        return annotationView
//    }
//    
//    func mapView(_ mapView: MKMapView, annotationView: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
//        guard let annotation = annotationView.annotation else { return }
//        
//        let alert = UIAlertController(title: annotation.title ?? "Faculty", message: "Coordinates: \(annotation.coordinate.latitude), \(annotation.coordinate.longitude)", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//        
//        self.present(alert, animated: true, completion: nil)
//    }
}

// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");
var MapboxGl = require("mapbox-gl");
var MapboxGl$1 = require("mapbox-gl").default;
var Belt_Option = require("bs-platform/lib/js/belt_Option.js");
var Caml_option = require("bs-platform/lib/js/caml_option.js");
var MapboxGlCspWorkerJs = require("worker-loader!mapbox-gl/dist/mapbox-gl-csp-worker.js").default;

MapboxGl$1.workerClass = MapboxGlCspWorkerJs;

MapboxGl$1.accessToken = "TOKEN";

function useMap(lng, lat, zoom) {
  var container = React.useRef(null);
  var lngLat = [
    lng,
    lat
  ];
  React.useEffect((function () {
          var map = Belt_Option.map(Belt_Option.map(Caml_option.nullable_to_opt(container.current), (function (prim) {
                      return prim;
                    })), (function (container) {
                  return new MapboxGl.Map({
                              container: container,
                              center: lngLat,
                              zoom: zoom,
                              style: "mapbox://styles/mapbox/outdoors-v11"
                            });
                }));
          var partial_arg = new MapboxGl.Marker().setLngLat(lngLat);
          Belt_Option.map(map, (function (param) {
                  return partial_arg.addTo(param);
                }));
          Belt_Option.map(Belt_Option.map(map, (function (__x) {
                      return __x.addControl(new MapboxGl.GeolocateControl({
                                      positionOptions: {
                                        enableHighAccuracy: true
                                      },
                                      trackUserLocation: true
                                    }));
                    })), (function (__x) {
                  return __x.addControl(new MapboxGl.NavigationControl(), "topLeft");
                }));
          return Belt_Option.map(map, (function (prim, prim$1) {
                        prim.remove();
                        
                      }));
        }), [
        lng,
        lat,
        zoom,
        container
      ]);
  return container;
}

function App_Intip(Props) {
  var lng = Props.lng;
  var lat = Props.lat;
  var zoom = Props.zoom;
  var width = Props.width;
  var height = Props.height;
  var mapContainer = useMap(lng, lat, zoom);
  return React.createElement("div", {
              ref: mapContainer,
              style: {
                height: height,
                width: width
              }
            });
}

var make = App_Intip;

exports.useMap = useMap;
exports.make = make;
/*  Not a pure module */

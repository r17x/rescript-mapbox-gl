include Mapbox__Global;
module Map = Mapbox__Map; 
module Marker = Mapbox__Marker; 
module LngLatLike = Mapbox__LngLatLike
module LngLat = Mapbox__LngLat;
module LngLatBoundsLike = Mapbox__LngLatBoundsLike;
module LngLatBounds = Mapbox__LngLatBounds;
module MercatorCoordinate = Mapbox__MercatorCoordinate;
module Point = Mapbox__Point
module PointLike = Mapbox__PointLike

/** Map **/
let map = Map.make
let mapMakeOptions = Map.makeOptions
let mapWithOptions = Map.makeWithOptions
/** Marker **/
let marker = Marker.make
let markerWithOptions = Marker.makeWithOptions


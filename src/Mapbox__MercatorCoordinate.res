module LngLat = Mapbox__LngLat
module LngLatLike = Mapbox__LngLatLike

type t
@module("mapbox-gl") @new external make: (float, float, float) => t = "MercatorCoordinate"
// static method
@module("mapbox-gl") @scope("MercatorCoordinate")
external fromLngLat: (LngLatLike.t, float) => t = "fromLngLat"
// instance method
@send external meterInMercatorCoordinateUnits: t => float = "meterInMercatorCoordinateUnits"
@send external toAltitude: t => float = "toAltitude"
@send external toLngLat: t => LngLat.t = "toLngLat"

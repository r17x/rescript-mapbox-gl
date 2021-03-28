module LngLat = Mapbox__LngLat;
module LngLatLike= Mapbox__LngLatLike;
type t; 
external array: array<array<float>> => t = "";
external arrayLngLat: array<LngLat.t> => t = "";
external arrayLngLatLike: array<LngLatLike.t> => t = "";


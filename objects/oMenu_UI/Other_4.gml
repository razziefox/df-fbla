/// @description Changes current UI

//checks if game is running in a browser
if os_browser != browser_not_a_browser {
	//set layer id to the layer id of "Tile_UI" id
	var lay_id = layer_get_id("Tile_UI");
	
	//sets tile_id to the tilemap id of lay_id
	var tile_id = layer_tilemap_get_id(lay_id);

	//set tilemap to tUi_web
	tilemap_tileset(tile_id, tUi_web);
}
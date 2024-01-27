
m_velocityY = 0;
m_terminalVelY = 64;
m_gravity = 0;

m_layerID = layer_get_id("Tilemap_Floor")
m_tilemap = layer_tilemap_get_id(m_layerID);
m_width = 640;
m_height = 640;

m_myBaloon = instance_create_layer(x, y-640, "Objects", obj_Baloon)
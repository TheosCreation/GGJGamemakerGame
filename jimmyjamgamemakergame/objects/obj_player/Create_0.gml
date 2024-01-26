m_moveSpeed = 6.4;
m_velocityX=0;
m_velocityY = 0;
m_terminalVelX = 64;
m_stopping = false;
m_layerID = layer_get_id("Tilemap_Floor")
m_tilemap = layer_tilemap_get_id(m_layerID);
m_hitHead = false;
m_groundCheck = true;

g_gravity = 9.81;

c_width = 240;
c_height = 1280;

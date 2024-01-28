m_moveSpeed = 6.4;
m_velocityX=0;
m_velocityY = 0;

m_terminalVelX = 64;
m_terminalVelY = 128;

m_stopping = false;
m_canFootStep = true;
m_footStepCooldown = 20;
m_layerID = layer_get_id("Tilemap_Floor")
m_tilemap = layer_tilemap_get_id(m_layerID);
m_hitHead = false;
m_groundCheck = true;
m_jumpSpeed = 128;
m_canshoot = true;
m_shootdelay = 30;
g_gravity = 9.81;

c_width = 240;
c_height = 1280;


m_footStepArray = [snd_Footsteps10,	snd_Footsteps3, snd_Footsteps6, snd_Footsteps8]
m_randomFootstep = 0;
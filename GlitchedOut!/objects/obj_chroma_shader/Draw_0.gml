if (shader = 1) {
  shader_set(sh_aberration);
  shader_set_uniform_f(dis_u, dis);
}
if(room==rm_loading)background=bg_glitch3;
if(room==rm_menu or room==rm_options or room==htme_rm_lobby or room==htme_rm_lobbygm)background=bg_glitch1;
if(room==rm_game or room==htme_rm_game)background=bg_glitch2;
draw_background(background, x, y);
shader_reset();

draw_text(16, 16, string_hash_to_newline(str));


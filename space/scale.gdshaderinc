/*
contributors: Patricio Gonzalez Vivo
description: scale a 2D space variable
use: scale(<vec2> st, <vec2|float> scale_factor [, <vec2> center])
options:
    - CENTER_2D
    - CENTER_3D
license:
    - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
    - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

#ifndef FNC_SCALE
#define FNC_SCALE
vec2 scale(float st, float s, vec2 center) { return (st - center) * s + center; }
vec2 scale(float st, float s) {
#ifdef CENTER_2D
    return scale(st,  s, CENTER_2D);
#else
    return scale(st,  s, vec2(0.5));
#endif
}

vec2 scale(vec2 st, vec2 s, vec2 center) { return (st - center) * s + center; }
vec2 scale(vec2 st, float s, vec2 center) { return scale(st, vec2(s), center); }
vec2 scale(vec2 st, vec2 s) {
#ifdef CENTER_2D
    return (st - CENTER_2D) * s + CENTER_2D;
#else
    return (st - 0.5) * s + 0.5;
#endif
}

vec2 scale(vec2 st, float s) {
#ifdef CENTER_2D
    return (st - CENTER_2D) * s + CENTER_2D;
#else
    return (st - 0.5) * s + 0.5;
#endif
}

vec3 scale(vec3 st, vec3 s, vec3 center) { return (st - center) * s + center; }
vec3 scale(vec3 st, float s, vec3 center) { return (st - center) * s + center; }
vec3 scale(vec3 st, vec3 s) {
#ifdef CENTER_3D
    return (st - CENTER_3D) * s + CENTER_3D;
#else
    return (st - 0.5) * s + 0.5;
#endif
}

vec3 scale(vec3 st, float s) {
#ifdef CENTER_3D
    return (st - CENTER_3D) * s + CENTER_3D;
#else
    return (st - 0.5) * s + 0.5;
#endif
}

// For tiles
vec4 scale(vec4 st, float s) { return vec4(scale(st.xy, s), st.zw); }
vec4 scale(vec4 st, vec2 s) { return vec4(scale(st.xy, s), st.zw); }
#endif

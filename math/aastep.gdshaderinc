/*
contributors: Matt DesLauriers
description: Performs a smoothstep using standard derivatives for anti-aliased edges at any level of magnification. From https://github.com/glslify/glsl-aastep
use: aastep(<float> threshold, <float> value)
option:
    AA_EDGE: the absence of derivatives you can specify the antialiasing factor
examples:
    - https://raw.githubusercontent.com/eduardfossas/lygia-study-examples/main/draw/aastep.frag
*/

#ifndef FNC_AASTEP
#define FNC_AASTEP


float aastep(float threshold, float value) {
	//	Perhaps make AA_EDGE an arg?
	float AA_EDGE = 0.002;
    float afwidth = AA_EDGE;
    return smoothstep(threshold-afwidth, threshold+afwidth, value);
}
#endif

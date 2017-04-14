#ifdef GL_ES
precision mediump float;
#endif
/**
*  shaderToy automatically defines iResolution
*  For other implementations, uncomment below: 
*/
// uniform vec2 iResolution;


void main() {
	vec2 pos = gl_FragCoord.xy/iResolution.xy;
	gl_FragColor = vec4(pos.x,pos.y,0.0,1.0);
}

/** 
* color vec4(0,0,0,1) is black.
* thus coordinate (0,0) is bottom-left
*
* color vec4(1,0,0,1) is red.
* thus coordinate (1,0) is bottom-right
*
* color vec4(0,1,0,1) is green.
* thus coordinate (0,) is top-left
*
* color vec4(1,1,0,1) is yellow.
* thus coordinate (1,1) is top-right
*
* color vec4(0.5,0.5,0,1) is pukey ylw/grn.
* thus coordinate (.5,.5) is the middle
*/
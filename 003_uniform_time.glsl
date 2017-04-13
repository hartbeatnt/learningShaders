#ifdef GL_ES
precision mediump float;
#endif

// shaderToy automatically defines iGlobalTime
  // for other implementations, uncomment below: 
  // uniform float iGlobalTime;

void main() {
	gl_FragColor = vec4(abs(sin(iGlobalTime)),0.0,0.0,1.0);
}
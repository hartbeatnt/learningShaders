#ifdef GL_ES
precision mediump float;
#endif


void main() {
  vec3 cyan = vec3(0.0, 1.0, 1.0);
  vec3 magenta = vec3(1.0, 0.0, 1.0);

  float scalar = sin(iGlobalTime);

  vec3 mixedColor = mix(cyan, magenta, scalar);

	gl_FragColor = vec4(mixedColor,1.0);
}
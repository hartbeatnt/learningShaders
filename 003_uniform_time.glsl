#ifdef GL_ES
precision mediump float;
#endif
/**
*  shaderToy automatically defines iGlobalTime
*  for other implementations, uncomment below: 
*/

// uniform float iGlobalTime;

void main() {
	gl_FragColor = vec4(abs(sin(iGlobalTime)),0.0,0.0,1.0);
}

// void main() {
//   gl_FragColor = vec4(
//     abs(sin(iGlobalTime * 5.0) - 0.3 ),
//     abs(tan(iGlobalTime * 3.0) - 0.5 ),
//     abs(cos(iGlobalTime * 2.0) - 0.9),
//     1.0);
// }
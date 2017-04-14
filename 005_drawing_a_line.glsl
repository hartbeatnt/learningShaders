#ifdef GL_ES
precision mediump float;
#endif

/**
*  shaderToy automatically defines iResolution.
*  for other implementations, uncomment below: 
*/
// uniform float iResolution;

// Plot a line on Y using a value between 0 & 1
float plot(vec2 line, float y, float lineWidth) {
  //  returns 1 if y == line.y
  //  returns 0 if y != line.y
  //  returns somewhere in between if the difference
    //  is less than the lineWidth value
  return(
    smoothstep(y + lineWidth, y, line.y) -
    smoothstep(y, y - lineWidth, line.y)
  );
}

void main() {
  vec2 pos = gl_FragCoord.xy/iResolution.xy;

  // set the background and line colors
  vec3 bgColor = vec3(0.0, 0.0, 1.0);
  vec3 lineColor = vec3(0.0, 1.0, 0.0);

  // plot a line
  float y = smoothstep(0.2,0.5,pos.x);
  float lineScalar = plot(pos, y, .02);
  // replace bgColor with lineColor if
  // point is within lineWidth of line

  vec3 color = mix(bgColor, lineColor, lineScalar);
    
	gl_FragColor = vec4(color,1.0);
}
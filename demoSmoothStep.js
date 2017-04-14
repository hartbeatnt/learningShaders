const clamp = (num, min, max) => {
  return (
    num < min ? min :
    num > max ? max :
    num
  )
}

const smoothStep = (edge0, x, edge1) => {
  let t = clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0);
  return t * t * (3.0 - 2.0 * t);
}

const demoSmoothStep = (edge0, edge1, stepSize) => {
  console.log(`~~  SMOOTHSTEP DEMO  ~~`)
  console.log(`from ${edge0} to ${edge1} by ${stepSize}`)
  for (let i = edge0; i <= edge1; i+=stepSize) {
    console.log(`${i}: ${smoothStep(edge0, i, edge1)}`)
  }
}

demoSmoothStep(-.9, .9, .1)
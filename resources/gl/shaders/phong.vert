attribute vec3 aVertexPosition;
attribute vec3 aVertexNormal;
attribute vec2 aTextureCoord;
uniform mat4 uMVMatrix;
uniform mat4 uPMatrix;
uniform mat3 uNMatrix;

uniform vec3 uAmbientColor;

uniform vec4

varying vec2 vTextureCoord;
varying vec3 vLightWeighting;
void main(void) {
    gl_Position = uPMatrix * uMVMatrix * vec4(aVertexPosition, 1.0);
    vTextureCoord = aTextureCoord;
    vLightWeighting = vec3(1.0, 1.0, 1.0);
    
    //vec3 transformedNormal = uNMatrix * aVertexNormal;
    //float directionalLightWeighting = max(dot(transformedNormal, uLightingDirection), 0.0);
    //vLightWeighting = uAmbientColor + uDirectionalColor * directionalLightWeighting;
    
}

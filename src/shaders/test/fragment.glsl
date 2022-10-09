
    // precision mediump float;
    uniform vec3 uColor;
    uniform sampler2D uTexture;
    varying vec2 vUv;
    varying float vElevation;
// varying float vRandom;
        void main()
        {
            vec4 textureColor = texture2D(uTexture,vUv);
            textureColor.rgb *= vElevation * 2.0 + 0.5;
            gl_FragColor = vec4(textureColor);

            gl_FragColor = vec4(vUv, 1.0,1.0);
        }

// highp can have performance hit and might not work on some devices
// lowp can create bugs by the lack of precision
// We usually use mediump
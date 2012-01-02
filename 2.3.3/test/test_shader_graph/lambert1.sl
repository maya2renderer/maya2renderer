void lambert2 (
 output vector outColor;
)
{
 vector inColor = vector ( 0.03388404474, 0.8264399767, 0.04088501632 );
 vector transparency = vector ( 0, 0, 0 );
 vector ambientColor = vector ( 0, 0, 0 );
 vector incandescence = vector ( 0, 0, 0 );
 float diffusion = float 0.8000000119;
 vector outTransparency = vector ( 0, 0, 0 );
 extern normal N;
 normal Nn = normalize( N );
 outTransparency = transparency;
 Oi = Os * color ( 1 - outTransparency );
 outColor = incandescence +
            ( inColor * ( diffusion * 
                          vector diffuse( Nn ) +
                          ambientColor ) );
 Ci = Cs * Oi * color outColor;
}

void lambert3 (
 output vector outColor;
)
{
 vector inColor = vector ( 0.5, 0.5, 0.5 );
 vector transparency = vector ( 0, 0, 0 );
 vector ambientColor = vector ( 0, 0, 0 );
 vector incandescence = vector ( 0, 0, 0 );
 float diffusion = float 0.8000000119;
 vector outTransparency = vector ( 0, 0, 0 );
 extern normal N;
 normal Nn = normalize( N );
 outTransparency = transparency;
 Oi = Os * color ( 1 - outTransparency );
 outColor = incandescence +
            ( inColor * ( diffusion * 
                          vector diffuse( Nn ) +
                          ambientColor ) );
 Ci = Cs * Oi * color outColor;
}

void lambert4 (
 output vector outColor;
)
{
 vector inColor = vector ( 0.5, 0.5, 0.5 );
 vector transparency = vector ( 0, 0, 0 );
 vector ambientColor = vector ( 0, 0, 0 );
 vector incandescence = vector ( 0, 0, 0 );
 float diffusion = float 0.8000000119;
 vector outTransparency = vector ( 0, 0, 0 );
 extern normal N;
 normal Nn = normalize( N );
 outTransparency = transparency;
 Oi = Os * color ( 1 - outTransparency );
 outColor = incandescence +
            ( inColor * ( diffusion * 
                          vector diffuse( Nn ) +
                          ambientColor ) );
 Ci = Cs * Oi * color outColor;
}

void lambert1 (
 vector transparency;
 vector ambientColor;
 vector incandescence;
)
{
 vector inColor = vector ( 0, 0.003000020981, 0.5 );
 float diffusion = float 0.8000000119;
 vector outColor = vector ( 0, 0, 0 );
 vector outTransparency = vector ( 0, 0, 0 );
 extern normal N;
 normal Nn = normalize( N );
 outTransparency = transparency;
 Oi = Os * color ( 1 - outTransparency );
 outColor = incandescence +
            ( inColor * ( diffusion * 
                          vector diffuse( Nn ) +
                          ambientColor ) );
 Ci = Cs * Oi * color outColor;
}

surface lambert1()
{
 vector lambert2_outColor;
 vector lambert3_outColor;
 vector lambert4_outColor;

 lambert2(lambert2_outColor);
 lambert3(lambert3_outColor);
 lambert4(lambert4_outColor);
 lambert1(lambert2_outColor, lambert3_outColor, lambert4_outColor);
}

/*
 * Ghostty GLSL Shader: Subtle Soften
 *
 * This shader "smooths" the text by sampling 4 adjacent pixels
 * and mixing their average color with the original pixel.
 *
 * It's designed to be very subtle.
 */

// --- Tweak this value ---
// 0.0 = very blurry
// 1.0 = no effect (original text)
//
// A good starting value is 0.75
const float strength = 0.75;

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Get the pixel coordinate (0.0 to 1.0)
    vec2 uv = fragCoord.xy / iResolution.xy;
    
    // Get the size of a single pixel
    vec2 texel = 1.0 / iResolution.xy;
    
    // 1. Get the original, unmodified pixel
    vec4 original_color = texture(iChannel0, uv);
    
    // 2. Sample the 4 pixels directly next to the original
    vec4 blur_color = vec4(0.0);
    blur_color += texture(iChannel0, uv + vec2( 0.0,     -texel.y)); // Up
    blur_color += texture(iChannel0, uv + vec2(-texel.x,  0.0));     // Left
    blur_color += texture(iChannel0, uv + vec2( texel.x,  0.0));     // Right
    blur_color += texture(iChannel0, uv + vec2( 0.0,      texel.y)); // Down
    
    // Average the 4 samples
    blur_color /= 4.0;
    
    // 3. Mix the blurry color with the original color
    // 'strength' controls how much of the original text is preserved.
    fragColor = mix(blur_color, original_color, strength);
}


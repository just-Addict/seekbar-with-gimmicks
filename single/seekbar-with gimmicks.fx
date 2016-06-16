////////////////////////////////////////////////////////////////////////////////
// Author:  just_Addict
// Source:  based on effects by Zao, Anomulous, Axon, PurpleMonkey and others
// Updated: Wednesday, 18 May, 2016 5:20:24 AM
////////////////////////////////////////////////////////////////////////////////
//#define USE_PS_3_0
//#define USE_PS_2_b 	// NVIDIA
//#define USE_PS_2_a	// RADEON
#define USE_PS_2_0
//------------------------------------------------------------------------------
// Constants (changes here control appearance of DEFINEs when activated
//------------------------------------------------------------------------------
float  scaleY		= 0.95;
float  contrast		= 1.0;		// only affects gradients
float  brightness	= 1.0;		// changes overall color intensity
bool   showZeroline	= 0;		// zeroline in moments of silence
float  fuzzyEdge	= 0.0;		// range 0.00 to personal preference
float  detailLevel	= 4.0;		// range 0 to 4.0, changes edge detail
float  shadeAlpha	= 0.55;		// regular "shade played" alpha factor
float  axisGamma	= 0.15;		// darker< 1 >lighter 'zero line'
float  barWidth		= 1.50;		// width factor for position line
float2 fadeFromTo = float2(0.8,0.7); 	// controls fading on the FADING_BAR
float4 grid 	  = float4(5.0,0.0,2.0,0.75);
/*
//	grid.x = 4;		every nth row/column gets its color adjusted
//	grid.y = 0;		currently unused so gridsquares stay square
//	grid.w = 1;		Thickness of the gridlines
//	grid.a = 0.75;		darker < 1 > lighter gridlines
*/
#define UI_COLORS
//#define NORMAL_BAR
//#define NORMAL_HIGHLIGHT
//------------------------------------------------------------------------------
// Example preset recreating the look of the default wavebar
// Be aware that it will disable most all "#define"s, so if you do not get the
// desired effect, be sure to first check if one of the two below is activated.
//------------------------------------------------------------------------------
//#define USE_DEFAULT
//#define USE_DEFAULT_NO_BLUR
//------------------------------------------------------------------------------
//#define TRIPPY_SCROLLER
//#define SOUNDCLOUD_LOOK
#define HANGING_GARDEN
//#define DELFTS_BLUE
//#define CLOUDY_SKIES
//#define BEHIND_BARS
//#define BEHIND_BLINDS

//#define BASIC_LOOK
//#define PRESET_TEST
#ifdef PRESET_TEST
//	#define SCALE_REPLAYGAIN
//	#define SCALE_CMAGNITUDE
//	#define SCALE_TMAGNITUDE
//	#define ASYMETRIC
//	#define SHOW_RMS
//	#define SHOW_CLIPPING
//	#define SOUNDCLOUD
//	#define FLIP_CLOUD
//	#define UI_COLORS
//	#define CHINA_COLORS
//	#define SNDCLOUD_COLORS
//	#define GARDEN_COLORS
//	#define SKY_COLORS
//	#define CRAZY_COLORS
//	#define RAINBOW_COLORS
//	#define GRADIENT_LDA
//	#define GRADIENT_LDS
//	#define FLIP_GRADIENT
//	#define FLAT_GRADIENT
//	#define NORMAL_HIGHLIGHT
//	#define INNER_HIGHLIGHT
//	#define INVERT_HIGHLIGHT
//	#define GRAYED_HIGHLIGHT
//	#define SEPIA_HIGHLIGHT
//	#define CSHIFT_HIGHLIGHT
//	#define MIRROR_HIGHLIGHT
//	#define GRID_VERTICAL
//	#define GRID_HORIZONTAL
//	#define BORDER_ON_HIGHLIGHT
//	#define X_AXIS_ON_HIGHLIGHT
//	#define BORDER_ON_FULLWIDTH
//	#define X_AXIS_ON_FULLWIDTH
//	#define NORMAL_BAR
//	#define FADING_BAR
//	#define INSIDE_BAR
//	#define OUTSIDE_BAR
//	#define CHEEZY_BAR
//	#define CHEEZY_MAGNIFY
//	#define DO_SCROLL
#endif
////////////////////////////////////////////////////////////////////////////////
// once you have a combination of defines that you like, you can save those as
// a preset by adding them as a custom "#define". Scroll down for an example
//------------------------------------------------------------------------------
// PRESETS SECTION
//------------------------------------------------------------------------------
#if defined(USE_DEFAULT) || defined(USE_DEFAULT_NO_BLUR)
	float blurFactor = 7.0;
	#undef SCALE_REPLAYGAIN
	#undef SCALE_CMAGNITUDE
	#undef SCALE_TMAGNITUDE
	#undef ASYMETRIC
	#undef SHOW_RMS
	#undef SHOW_CLIPPING
	#undef FLIP_CLOUD
	#define UI_COLORS
	#undef CHINA_COLORS
	#undef CLOUD_COLORS
	#undef CRAZY_COLORS
	#undef RAINBOW_COLORS
	#undef GRADIENT_LDA
	#undef GRADIENT_LDS
	#undef FLIP_GRADIENT
	#undef FLAT_GRADIENT
	#define NORMAL_HIGHLIGHT
	#undef INNER_HIGHLIGHT
	#undef INVERT_HIGHLIGHT
	#undef GRAYED_HIGHLIGHT
	#undef SEPIA_HIGHLIGHT
	#undef CSHIFT_HIGHLIGHT
	#undef MIRROR_HIGHLIGHT
	#undef GRID_HORIZONTAL
	#undef GRID_VERTICAL
	#undef BORDER_ON_HIGHLIGHT
	#undef X_AXIS_ON_HIGHLIGHT
	#undef BORDER_ON_FULLWIDTH
	#undef X_AXIS_ON_FULLWIDTH
	#define NORMAL_BAR
	#undef FADING_BAR
	#undef INSIDE_BAR
	#undef OUTSIDE_BAR
	#undef CHEEZY_BAR
	#undef CHEEZY_MAGNIFY
	#undef DO_SCROLL
#endif
//------------------------------------------------------------------------------
#ifdef SOUNDCLOUD_LOOK
	#define SNDCLOUD_COLORS
	#define SCALE_CMAGNITUDE
	#define SOUNDCLOUD
	#define INSIDE_BAR
#endif
//------------------------------------------------------------------------------
#ifdef DELFTS_BLUE
	#define CHINA_COLORS
	#define SCALE_TMAGNITUDE
	#define SHOW_RMS
	#define GRADIENT_LDA
	#define NORMAL_HIGHLIGHT
	#define NORMAL_BAR
#endif
//------------------------------------------------------------------------------
#ifdef CLOUDY_SKIES
	#define SKY_COLORS
	#define SCALE_CMAGNITUDE
	#define ASYMETRIC
	#define GRADIENT_LDA
	#define INNER_HIGHLIGHT
	#define INSIDE_BAR
	#define DO_SCROLL
#endif
//------------------------------------------------------------------------------
#ifdef TRIPPY_SCROLLER
	#define USE_PS_3_0
	#define CHEEZY_BAR
	#define SCALE_CMAGNITUDE
	#define ASYMETRIC
	#define SHOW_RMS
	#define CRAZY_COLORS
	#define OUTSIDE_BAR
	#define CHEEZY_MAGNIFY
	#define DO_SCROLL
#endif
//------------------------------------------------------------------------------
#ifdef BEHIND_BARS
	#undef UI_COLORS
	#define CHINA_COLORS
	#define SCALE_TMAGNITUDE
	#define SHOW_RMS
	#define GRADIENT_LDA
	#define GRID_HORIZONTAL
	#define NORMAL_HIGHLIGHT
#endif
//------------------------------------------------------------------------------
#ifdef BEHIND_BLINDS
	#undef UI_COLORS
	#define CHINA_COLORS
	#define SCALE_TMAGNITUDE
	#define SHOW_RMS
	#define GRADIENT_LDA
	#define GRID_VERTICAL
	#define NORMAL_HIGHLIGHT
#endif
//------------------------------------------------------------------------------
#ifdef HANGING_GARDEN
	#define GARDEN_COLORS
	#define SCALE_TMAGNITUDE
	#define SOUNDCLOUD
	#define FLIP_CLOUD
	#undef INNER_HIGHLIGHT
	#undef NORMAL_BAR
	#define NORMAL_HIGHLIGHT
	#undef GRID_VERTICAL
	#define GRID_HORIZONTAL
	#define CHEEZY_MAGNIFY
#endif
//------------------------------------------------------------------------------
#ifdef BASIC_LOOK
	#define SCALE_TMAGNITUDE
	#define NORMAL_HIGHLIGHT
	#define NORMAL_BAR
	#define BORDER_ON_HIGHLIGHT
	#define CHEEZY_MAGNIFY
#endif
//------------------------------------------------------------------------------
// internal defines. DO NOT CHANGE or bad things may happen.
//------------------------------------------------------------------------------
#if defined(USE_DEFAULT) && !defined(USE_DEFAULT_NO_BLUR)
bool do_blur = true;
#endif
#if defined(USE_DEFAULT_NO_BLUR)
bool do_blur = false;
#endif
#ifdef SOUNDCLOUD
	#undef ASYMETRIC
	#ifndef HANGING_GARDEN
	#define INNER_HIGHLIGHT
	#endif
#endif
#ifdef DO_SCROLL
	#define CHEEZY_MAGNIFY
#endif
//------------------------------------------------------------------------------
// Preset color selections
//------------------------------------------------------------------------------
#ifdef SNDCLOUD_COLORS
#undef UI_COLORS
float4 backgroundColor = float4(0.9000,0.9000,0.9000,1);
float4 textColor       = float4(0.6500,0.6500,0.6500,1);
float4 highlightColor  = float4(1.0000,0.5000,0.0000,1);
float4 selectionColor  = float4(0.0000,0.0000,0.0000,1);
#endif
//------------------------------------------------------------------------------
#ifdef SKY_COLORS
#undef UI_COLORS
float4 backgroundColor = float4(0.0000,0.5000,1.0000,1);
float4 textColor       = float4(0.7500,0.7500,0.7500,1);
float4 highlightColor  = float4(0.5000,0.5000,0.5000,1);
float4 selectionColor  = float4(1.0000,0.0000,0.0000,1);
#endif
//------------------------------------------------------------------------------
#ifdef GARDEN_COLORS
#undef UI_COLORS
float4 backgroundColor = float4(0.0000,0.5000,1.0000,1);
float4 textColor       = float4(0.5000,1.0000,0.0000,1);
float4 highlightColor  = float4(0.0500,0.0500,0.0500,1);
float4 selectionColor  = float4(0.2500,0.5000,0.0000,1);
#endif
//------------------------------------------------------------------------------
#ifdef CHINA_COLORS
#undef UI_COLORS
float4 backgroundColor = float4(0.9375,0.9375,0.9375,1);
float4 textColor       = float4(0.1914,0.2813,0.5555,1);
float4 highlightColor  = float4(0.4531,0.6094,0.8008,1);
float4 selectionColor  = float4(0.4531,0.6757,0.8359,1);
#endif
//------------------------------------------------------------------------------
#ifdef CRAZY_COLORS
#undef UI_COLORS
float4 backgroundColor = float4(0.0000,0.0000,0.2500,1);
float4 textColor       = float4(0.3750,0.5000,0.6250,1);
float4 highlightColor  = float4(0.0000,0.0000,0.2500,1);
float4 selectionColor  = float4(1.0000,1.0000,1.0000,1);
#endif
//------------------------------------------------------------------------------
// Semantic mappings
//------------------------------------------------------------------------------
#ifdef UI_COLORS
float4 backgroundColor : BACKGROUNDCOLOR;
float4 textColor       : TEXTCOLOR;
float4 highlightColor  : HIGHLIGHTCOLOR;
float4 selectionColor  : SELECTIONCOLOR;
#endif
float  cursorPos       : CURSORPOSITION;
bool   cursorVisible   : CURSORVISIBLE;
float  seekPos         : SEEKPOSITION;
bool   seeking         : SEEKING;
float2 viewportSize    : VIEWPORTSIZE;
bool   horizontal      : ORIENTATION;
bool   flipped         : FLIPPED;
bool   shadePlayed     : SHADEPLAYED;
/*
// the shader semantic REPLAYGAIN is a float4 containing the replaygain values
//
//	R is album gain
//	B is track gain
//	G is album peak
//	A is track peak
*/
float4 replayGain      : REPLAYGAIN;
/*
// The shader semantics "CHANNELMAGNITUDE" and "TRACKMAGNITUDE" are float4's
// representing the amplitude of the current channel or the whole track.
//
//	R is the minimum amplitude,
//	G is the maximum amplitude,
//	B is the highest RMS value,
//	A is 1.0 if the data is present.
//
// This can be used to rescale the vertical texcoord to display a scaled and
// displaced range, ensuring that the edges of the display are peak-to-peak.
//
// Channel Magnitude scales each channel separately
// Track Magnitude scales keeping the relation to other channels
// Requires foo_wave_seekbar version 0.2.34 or later
*/
float4 chanMagnitude   : CHANNELMAGNITUDE;  // highest peak in current channel
float4 trackMagnitude  : TRACKMAGNITUDE;    // highest peak accross all channels
//
// track information gladly used to create a sliding wave seekbar
// Requires foo_wave_seekbar version 0.2.35 or later
//
float  trackDuration   : TRACKDURATION;     // total track length
float  trackTime       : TRACKTIME;         // playback position
float  realTime        : REALTIME;          // current time
/*
//	The above only allow scrolling by stretching output along the time axis*.
//	It does not work the other way around. so when using the left mouse button
//	to seek, the position in the window is still relative to track length.
//	The same is true for mousewheel seeking as this scrolls in fixed steps
//	relative to track length.
//	This also prevents the seek bar to show up (when outside visible timeframe)
//
//	also the "detail" level of the wave bar depends on tracklength
//	we only have 2048 samples to work with, no matter how long the track is
//	e.g.~34:08 mm:ss -> 2048 samples / 2048 secs  =  1 sample  per second
//	or   ~3:25 mm:ss -> 2048 samples / 204.8 secs = 10 samples per second
//
//	*time axis refers here to the direction in which the bar travels.
*/
//------------------------------------------------------------------------------
// Textures & Samplers
//------------------------------------------------------------------------------
texture tex : WAVEFORMDATA;

sampler sTex = sampler_state
{
	Texture = (tex);
	MipFilter = LINEAR;
	MinFilter = LINEAR;
	MagFilter = LINEAR;

	AddressU = Clamp;
};
//------------------------------------------------------------------------------
// Input/Output channels
//------------------------------------------------------------------------------
struct VS_IN
{
	float2 pos : POSITION;
	float2 tc : TEXCOORD0;
};

struct PS_IN
{
	float4 pos : SV_POSITION;
	float2 tc : TEXCOORD0;
};
//------------------------------------------------------------------------------
// Input Channel
//------------------------------------------------------------------------------
PS_IN VS( VS_IN input )
{
	PS_IN output = (PS_IN)0;
	float2 half_pixel = float2(1,-1) / viewportSize;
	output.pos = float4(input.pos - half_pixel, 0, 1);
//	float2 fudge = scrollSpeed * viewportSize / 100; // .
	float2 fudge = viewportSize / 100; // .

	if (horizontal)
	{
#ifdef DO_SCROLL
		output.tc = float2(( input.tc.x + cursorPos * trackDuration/fudge.x) * (fudge.x/trackDuration), input.tc.y);
#else
		output.tc = float2(( input.tc.x + 1.0) / 2.0, input.tc.y);
#endif
	}
	else
	{
#ifdef DO_SCROLL
		output.tc = float2((-input.tc.y + cursorPos * trackDuration/fudge.y) * (fudge.y/trackDuration), input.tc.x);
#else
		output.tc = float2((-input.tc.y + 1.0) / 2.0, input.tc.x);
#endif
	}

	if (flipped)
#ifdef DO_SCROLL
		output.tc.x = 0.0 - output.tc.x + (trackTime/trackDuration) * 2;
#else
		output.tc.x = 1.0 - output.tc.x;
#endif
	return output;
}
//------------------------------------------------------------------------------
// Colors vertical bar pixels IF within barThickness distance from trackposition
//------------------------------------------------------------------------------
#if   defined(NORMAL_BAR)
float4 bar( float pos, float2 tc, float4 aColor, float barThickness, bool show )
{
	float dist = abs(pos - tc.x);
	float4 c = (show && dist < barThickness)
// NOTE: it can make just the difference in hitting the max calculation limit
#ifdef USE_PS_3_0
		? lerp(selectionColor, aColor, smoothstep(0, barThickness, dist))
#else
		? selectionColor
#endif
		: aColor;
	return c;
}
//------------------------------------------------------------------------------
// Colors vertical bar pixels IF within barThickness distance from trackposition
//------------------------------------------------------------------------------
#elif defined(FADING_BAR)
float4 faded_bar( float pos, float2 tc, float4 aColor, float barThickness, bool show, float vertFrom, float vertTo )
{
// for defined bar ends use same value for the vertFrom and vertTo argument
// use differening values for fuzzy ends, highest controls out-in or in-out
	float dist = abs(pos - tc.x);
	float fluff = smoothstep(vertFrom, vertTo, abs(tc.y));
	float4 c = (show ) //&& dist < barThickness
// NOTE: it can make just the difference in hitting the max calculation limit
#ifdef USE_PS_3_0
		? lerp(selectionColor, aColor, max(fluff, smoothstep(0, barThickness, dist)))
#else
		? lerp(selectionColor, aColor, fluff)
#endif
		: aColor;
	return c;
}
//------------------------------------------------------------------------------
// Colors vertical bar pixels IF within barThickness distance from trackposition
//------------------------------------------------------------------------------
#elif defined(INSIDE_BAR) || defined(OUTSIDE_BAR)
float4 inverted_bar( float pos, float2 tc, float4 aColor, float barThickness, bool show, bool inside )
{
#ifdef OUTSIDE_BAR
	inside = !inside;
#endif
	float dist = abs(pos - tc.x);
	float4 c = inside ? selectionColor : aColor;
	c = (show && dist < barThickness)
// NOTE: it can make just the difference in hitting the max calculation limit
#ifdef USE_PS_3_0
		? lerp(c, aColor, smoothstep(0, barThickness, dist))
#else
		? c
#endif
		: aColor;
	return c;
}
#endif
//------------------------------------------------------------------------------
// Scaling
//------------------------------------------------------------------------------
#if defined(SCALE_REPLAYGAIN)
float4 replaygain_scale( float4 minmaxrms )
{
/*
// I don't see how the method with arbitrary number juggling can scale to -1,1
// at worst you're constantly fiddling with the 2.0 valueand do we even still
//
//	minmaxrms.rgb *= 2.0;
//	if (replayGain.g != -1000 && replayGain.a > 0) {
//		minmaxrms.rgb *= pow(10,(replayGain.g) / 20); // use track gain
//	}
//	else
//	if (replayGain.r != -1000 && replayGain.b > 0) {
//		minmaxrms.rgb *= pow(10,(replayGain.r) / 20); // use album gain
//	}
//
// Something that has been bugging me for a very long time, suddenly became
// clear after having implemented the scrolling feature.
// Even after applying replaygain or magnitude scaling, with some tracks the
// wavebar just seemed not to want to reach the edges. The reason turns out
// this is simply the result of mapping a dataset of 2048 samples to a range
// that is very likely less than half that size. The maximum peaks just get
// averaged out in the display and if only a few exist, they will not be
// visible, even though the waveform is factually scaled edge-to-edge.
// By turning on scrolling mode, the range available for the dataset becomes
// bigger than the number of samples, making these max peaks visible.
// Do however take the edge-to-edge with a pinch of salt...most times it does...
*/
	if (replayGain.a > 0.0 && replayGain.a < 1.0)
	// track peak
		minmaxrms.rgb *= (1/replayGain.a);
	else
	if (replayGain.b > 0.0 && replayGain.b < 1.0)
	// album peak
		minmaxrms.rgb *= (1/replayGain.b);
	// no matter if it's smaller or larger, I want the bar at this high!
	minmaxrms.rgb *= scaleY;

	return minmaxrms;
}
#endif
// The example originally posted by Zao used tc, which scales the output
// this affects all calculations where tc.y and d.y are both involved
// ideally scaling should be done on the input (i.e. minmaxrms data) so
// we don't have to account for a tc.y range not always going from [-1,1]
// sadly this does not fly with RMS (or I didn't see how)
#if defined(SCALE_CMAGNITUDE) || defined(SCALE_TMAGNITUDE)
float magnitude_scale( float tcy, float4 magnitudeType, float baseLine )
{
// CHANNELMAGNITUDE contains the values for the current channel being drawn.
// TRACKMAGNITUDE contains the most significant values from all channels.
// Requires "foo_wave_seekbar" version 0.2.34 or higher
#ifdef ASYMETRIC
	float magnitude = max(-magnitudeType.r, magnitudeType.g);
#else
	float magnitude = max(abs(magnitudeType.r), abs(magnitudeType.g));
#endif
	if (magnitude < scaleY)
	{
	#ifdef ASYMETRIC
		// This variation will map the range [-1,1] to [min_peak,max_peak].
		tcy = ((tcy+1)/2 * (magnitudeType.g - magnitudeType.r) + magnitudeType.r)/scaleY;
	#else
		// This variation will map the range [-1,1] to [-min_peak,max_peak]
		// max(...) is already calculated above in magnitude, so use it again
		//tcy = tcy * max(abs(magnitudeType.r), abs(magnitudeType.g));
		tcy = (tcy * magnitude);
	#endif
	}
	else
	if (magnitude > scaleY) tcy /= scaleY;
	return tcy;
}
#endif
//------------------------------------------------------------------------------
// Miscellaneous colorspace functions
//------------------------------------------------------------------------------
#if defined(CRAZY_COLORS) || defined(RAINBOW_COLORS)
float4 hue( float H )
{
	float R = abs(H * 6 - 3) - 1;
	float G = 2 - abs(H * 6 - 2);
	float B = 2 - abs(H * 6 - 4);
	float A = 1;
	return saturate(float4(R,G,B,A));
}
#endif
///////////////////////////////////////////////////////////////////////////////
// Author: Foosion (https://hydrogenaud.io/index.php?action=profile;u=5153)
// Source: https://hydrogenaud.io/index.php/topic,77490.msg677800.html#msg677800
////////////////////////////////////////////////////////////////////////////////
#ifdef GRAYED_HIGHLIGHT
float4 grayscale( float4 color )
{
	return color.r * 0.3 + color.g * 0.59 + color.b * 0.11;
}
#endif
////////////////////////////////////////////////////////////////////////////////
// Author: Foosion (https://hydrogenaud.io/index.php?action=profile;u=5153)
// Source: https://hydrogenaud.io/index.php/topic,77490.msg677800.html#msg677800
////////////////////////////////////////////////////////////////////////////////
#ifdef SEPIA_HIGHLIGHT
float4 sepia( float4 color )
{
	float4 weight;
	weight.r = 0.3;
	weight.g = 0.59;
	weight.b = 0.11;
	weight.a = 0;

	float4 adjust;
	adjust.r =  0.098039215686275;
	adjust.g = -0.050980392156863;
	adjust.b = -0.26274509803922;
	adjust.a =  0;

	float intensity = dot(color, weight);
	color = intensity + adjust;
	return saturate(color);
}
#endif
////////////////////////////////////////////////////////////////////////////////
// Author: PurpleMonkey (https://hydrogenaud.io/index.php?action=profile;u=22962)
// Source: https://hydrogenaud.io/index.php/topic,77490.msg705002.html#msg705002
// vector rotation about the gray axis (hue)
// matrix used at: http://www.cprogramming.com/tutorial/3d/rotation.html
// with X,Y,Z = 1/sqrt(3)
// values (1/3)pi and (2/3)pi will produce simple rgb/gbr rotation
// If you want two particular hues, use the colour picker to find the hue values
// then subtract them and divide by 38.2.
////////////////////////////////////////////////////////////////////////////////
#if defined(CSHIFT_HIGHLIGHT) || defined(CRAZY_COLORS)
float4 cshift( float4 color , float theta )
{
	float4 a;
	a.r = cos(theta);             //c
	a.g = sin(theta) / sqrt(3);   //s
	a.b = (1-a.r)/3;              //t
	float4x4 b = {
		a.b+a.r, a.b-a.g, a.b+a.g, 0,
		a.b+a.g, a.b+a.r, a.b-a.g, 0,
		a.b-a.g, a.b+a.g, a.b+a.r, 0,
		0      , 0      , 0      , 1
	};
	return mul( b , color );
}
#endif
//------------------------------------------------------------------------------
// Colors pixels in horizontal and/or vertical direction if on a gridposition
// TODO: Make it draw two lines, each half the weight, one darker, one lighter
//------------------------------------------------------------------------------
#if defined(GRID_VERTICAL) || defined(GRID_HORIZONTAL)
float4 draw_grid( float2 tc, float4 aColor, float2 d, float fd, float baseLine, bool insideWave )
{
	float fudge = 1;
#ifdef DO_SCROLL
	fudge = (trackDuration / fd)/2;
#endif
//
// grid.x : x and/or y interval
// grid.y : currently unused
// grid.z : thickness of the gridline
// grid.a : color intensity of gridline.  darker<  1  >lighter
//
#ifdef GRID_HORIZONTAL
	if (grid.x > 1
	#ifdef HANGING_GARDEN
	&& (tc.y-(baseLine) <= 0 && !insideWave)
	#endif
	&& ((tc.x*fudge) % (d.x*grid.x)   < (d.x*grid.z)))
		aColor *= grid.a;
#endif
#ifdef GRID_VERTICAL
	if (grid.x > 1
	&& ((1-tc.y)     % (d.y*grid.x*2) < (d.y*grid.z*2)))
		aColor *= grid.a;
#endif
	return aColor;
}
#endif
//------------------------------------------------------------------------------
// Colors border pixels along the left, top, right and.or bottom edges
//------------------------------------------------------------------------------
#if defined(BORDER_ON_HIGHLIGHT) || defined(BORDER_ON_FULLWIDTH) || defined(X_AXIS_ON_HIGHLIGHT) || defined(X_AXIS_ON_FULLWIDTH)
float4 draw_border( float4 aColor, float2 tc, float barThickness, float2 d, float fd, float baseLine )
{
	bool correctSide;
#ifdef MIRROR_HIGHLIGHT
	// if the tc.x component is on the right of the current position
	correctSide = tc.x > cursorPos;
#else
	// if the tc.x component is on the left of the current position
	correctSide = tc.x < cursorPos;
#endif

	float edge = d.x;
#ifdef DO_SCROLL
	edge *= barThickness*2;
#endif
#if   defined(BORDER_ON_FULLWIDTH)
	// left AND right edge tc.x's within the set range
	if ((tc.x <     edge && correctSide)
	||  (tc.x > 1 - edge && !correctSide))
		aColor = selectionColor;
#elif defined(BORDER_ON_HIGHLIGHT)
	// left OR right edge tc.x's within the set range
	if ((tc.x <     edge && correctSide)
	||  (tc.x > 1 - edge && correctSide)
	)
		aColor = selectionColor;
#endif

#if defined(BORDER_ON_HIGHLIGHT) || defined(BORDER_ON_FULLWIDTH)
	// only those tc.y's that are near the top or the bottom of the channel
	if ( (tc.y >= (1.0 - d.y*2)|| tc.y <= (d.y*2 - 1.0))
	#ifndef BORDER_ON_FULLWIDTH
		&& correctSide
	#endif
	)
		aColor = selectionColor;
#endif

// does not position correctly with magnitude scaling, but does with soundcloud
#if defined(X_AXIS_ON_HIGHLIGHT) || defined(X_AXIS_ON_FULLWIDTH)
	// baseline (=offset for soundcloud) is tc.y value for magnitude 'zero'
	if (tc.y-baseLine > -d.y*1.25 && tc.y-baseLine < d.y*1.25
	#ifndef X_AXIS_ON_FULLWIDTH
		&& correctSide
	#endif
	) aColor *= axisGamma;
#endif

	return aColor;
}
#endif
//------------------------------------------------------------------------------
// Utilities
//------------------------------------------------------------------------------
float4 rmsfactors( float2 tc, float2 dVP, float4 minmaxrms, float border )
{
	float zeroLine    = showZeroline ? border : dVP.y/2;
	float factor      = 1.0;
	bool  insideRms   = false;
// fuzzFactor controls the feathering at the edges of the wave
	float fuzzFactor  = fuzzyEdge;
	if (fuzzyEdge <= 0) fuzzFactor = 0.001;
	fuzzFactor *= fuzzFactor;

	float belowWave   = tc.y + zeroLine - minmaxrms.r;
	float aboveWave   = tc.y - zeroLine - minmaxrms.g;
	float factorWave  = min(abs(belowWave), abs(aboveWave));
	bool  insideWave  = (belowWave > 0 && aboveWave < 0);
	      factor      = factor * saturate(factorWave / border / fuzzFactor );

#ifdef SHOW_RMS
// there's a pitfall when dealing with replaygain/magnitude scaling and low peak
// values, when such a low peak track gets upscaled in the display, this also
// affects the RMS area which will make it look very much bloated.
	float diffRms     = abs(tc.y) - border - (minmaxrms.b);
	float factorRms   = abs(diffRms);
	      insideRms   = diffRms < 0;
// TODO: look into ways to modify the edge area between regular wave and rms
	      factor      = insideRms  ? (1.0 - 0.5 * saturate(factorRms  / border / 2)) : 1.0;
	      factor      = insideWave ? (factor    * saturate(factorWave / border / fuzzFactor)) : 0.0;
#endif
	return float4(insideWave, factorWave, insideRms, factor);
}
//------------------------------------------------------------------------------
// Effect Specific
//------------------------------------------------------------------------------
#ifdef SOUNDCLOUD
////////////////////////////////////////////////////////////////////////////////
// Author: Zao (https://hydrogenaud.io/index.php?action=profile;u=9001)
// Source: https://hydrogenaud.io/index.php/topic,77490.msg844585.html#msg844585
////////////////////////////////////////////////////////////////////////////////
float3 zao( float2 tc, float baseLine )
{
	#ifdef FLIP_CLOUD
	float low_unscale = 3.0/4.0;
	float high_unscale = 3.0/2.0;
	#else
	float low_unscale = 3.0/2.0;
	float high_unscale = 3.0/4.0;
	#endif
	bool mirrored = tc.y < baseLine;
	if (mirrored)
	{
		tc.y = (baseLine - tc.y) * low_unscale;
	}
	else
	{
		tc.y = (tc.y - baseLine) * high_unscale;
	}
	float gradient = lerp(0.8, 1.0, tc.y);
#ifdef FLIP_GRADIENT
	float boost = mirrored ? 1.23 : 1.0;
#else
	float boost = mirrored ? 1.0 : 1.23;
#endif
	return float3(tc.x,tc.y,boost*gradient);
}
#endif
////////////////////////////////////////////////////////////////////////////////
// Author: Axon (https://hydrogenaud.io/index.php?action=profile;u=10933)
// Source: https://hydrogenaud.io/index.php/topic,77490.msg704921.html#msg704921
////////////////////////////////////////////////////////////////////////////////
/*
// Axon called this a Cheezy pixel-shader-magnifying-glass effect. Well I don't
// know if he realized at the time but this little gem of math has some great
// 'hidden' extra functionality besides creating a glass-rod effect.
// When you look where I added the LOD argument, the part in between parenthesis
// alters the edges of a waveform, making them less spikey so that it is a more
// sloping effect. The 0.1 constant kicks in between LOD levels 3.6-4.0 to reveal
// even more peaks than are normally visible.
// I do not know why the default effect does not show these, I can only say that
// if you look at the same file in Audacity, the same peaks you see above LOD 3
// also show in Audacity, so it's not the result of exaggerated magnification.
*/
// variables:
// diopt changes the width of the glass-rod
// pos   if 0 allows the edge detail also to be changed without glass-rod effect
// LOD:  controls the sloping, the range coincide with actual LODs but goes to 4
////////////////////////////////////////////////////////////////////////////////
#if defined(CHEEZY_BAR) || defined(CHEEZY_MAGNIFY)
float4 cheezyzoomer( float2 tc, float2 dVP )
{
	float LOD = 0;
	float diopt = 0.005;
#ifdef CHEEZY_BAR
	float pos = cursorPos;
#else
	float pos = 0;
#endif
#ifdef CHEEZY_MAGNIFY
	LOD = detailLevel;
	if (LOD < 0) LOD = 0.0;
	if (LOD > 4) LOD = 4.0;
#endif
#if defined(DO_SCROLL) || !defined(CHEEZY_MAGNIFY)
	LOD = 4;
	diopt = 0.0025;
#endif
	float xd = tc.x - pos,
		y = (1/2-1),
		u = -(2*xd / (diopt)) * (2*xd / (diopt)),
		E = exp(u / 2);

	float4 minmaxrms = tex1Dbias(sTex, float4(
		tc.x + xd*y*E,
		0, 0,
		log2(2048*dVP.x*(0.1+4.0-LOD) * (1 + y*E*(1+u/2)))
		));
	return minmaxrms;
}
#endif
//------------------------------------------------------------------------------
// Meat
//------------------------------------------------------------------------------
float4 evaluate( float4 fgInput, float4 bgInput, float2 tc , float barThickness, float2 dVP, float fd, float baseLine )
{
	bool alphaShade = false;
	float4 minmaxrms = tex1D(sTex, tc.x);
// Determine clipping BEFORE we go mucking about with minmaxrms
// we don't want to introduce false clipping alerts caused by scaling or zooming
	float4 peakColor = float4(1.0,0,0,1);
#ifdef SHOW_CLIPPING
// NOTE! WE HAVE NOT YET UNBIASED SO DATA STILL RANGES BETWEEN 0 and 1 !!!
// it's not accurate but it comes pretty damn close to Audacity's display
// another factor reducing accurateness is the lower sample count
	float upperLimit = 0.925;
	float lowerLimit = 0.075;
#ifdef DO_SCROLL
	upperLimit = 0.9999;
	lowerLimit = 0.0001;
#endif
// the *10 does not control sensitivity, but only how far color extends at peaks
	if (((tc.y   > minmaxrms.g-dVP.y*10) && (minmaxrms.g >= upperLimit))
	||  ((tc.y+1 < minmaxrms.r+dVP.y*10) && (minmaxrms.r <= lowerLimit)))
		return peakColor;
#endif
// Both Magnitude scaling and SoundCloud alter the value of the passed in tc.y
// (NOT THE ONE FOR CURRENT TEXEL!) so we need to save the original value if we
// need to use it to check if a special condition applies to the current texel.
// This applies to gradients, border and grid texel calculations.
	float2 tc_copy = tc;
#if defined(CHEEZY_BAR) || defined(CHEEZY_MAGNIFY)
	minmaxrms = cheezyzoomer(tc, dVP);
#endif
/*	minmaxrms contains the datapoint from the current sample
//	R = Minimum Peak
//	G = Maximum Peak
//	B = RMS value
//	A = Flag indicating Biased Texture (0 = Not Biased, 1 = Biased)
*/
// format to be used between 0.2.34 and 0.2.41
//	minmaxrms.rgb -= 0.5 * minmaxrms.a;
//	minmaxrms.rgb *= 1.0 + minmaxrms.a;
// since the alpha component will always be 1 in seekbar versions after 0.2.41
// the above can be simplified to
	minmaxrms.rgb = (minmaxrms.rgb - 0.5) * 2;

// The thing is, if called after magnitude scaling, the zeroline is not at 0
// anymore. It may have moved up or down when the wave gets scaled asymetrical
#ifdef SOUNDCLOUD
	float3 soundclouds = zao(tc, baseLine);
// tc.x doesn't get changed so we simply ignore it
	tc.y = soundclouds.y;
// soundclouds.z component has boost*gradient result for later use
#endif

#ifdef SCALE_REPLAYGAIN
// only if we have replaygain info to begin with otherwise fallback on magnitude
	if (replayGain.a > 0.0 || replayGain.b > 0.0)
	{
		minmaxrms = replaygain_scale(minmaxrms);
	}
#endif
#if defined(SCALE_REPLAYGAIN) && (defined(SCALE_CMAGNITUDE) || defined(SCALE_TMAGNITUDE))
	else
	if (replayGain.a <= 0.0 && replayGain.b <= 0.0)
#endif
#if defined(SCALE_CMAGNITUDE) || defined(SCALE_TMAGNITUDE)
	{
	#if   defined(SCALE_CMAGNITUDE)
		float4 magnitudeType = chanMagnitude;
	#elif defined(SCALE_TMAGNITUDE)
		float4 magnitudeType = trackMagnitude;
	#endif
		tc.y = magnitude_scale( tc.y, magnitudeType, baseLine );
	#if defined(ASYMETRIC) && defined(DEBUG)
	// test to see if we actually reach the edges with low amplitude tracks
	// NOTE: the *10 does not control sensitivity, but only how far the color
	// extends into the wave at moments when it reaches highest/lowest peaks.
		peakColor = float4(0.0,1.0,0.0,1);
		// make sure we are looking at and are on the bottom half
		if (( (tc_copy.y < dVP.y*10-1 && minmaxrms.r < 0 && magnitudeType.r < 0)
		// check if current magnitude is near the lowest peak
			&& minmaxrms.r  <= magnitudeType.r+dVP.y/2)
		// make sure we are looking at and are on the upper half
		||  ( (tc_copy.y > 1-dVP.y*10 && minmaxrms.g > 0 && magnitudeType.g > 0)
		// check if current magnitude is near the highest peak
			&& minmaxrms.g  >= magnitudeType.g-dVP.y/2)
		)
		return peakColor;
	#endif
	}
#endif

// returns float4(insideWave, factorWave, insideRms, factor);
	float4 factors = rmsfactors(tc, dVP, minmaxrms, barWidth*dVP.y);

#ifdef FLAT_GRADIENT
	float offset = -0.45+1.85*contrast;
#else
//	float offset = factors.g / (minmaxrms.b / contrast );
	float offset = factors.g  / (minmaxrms.b / contrast*2);
#endif

	float4 bg, fg, fg1, fg2, hl;
	float bkFlip = 1;

	bg = bgInput;
	#ifdef HANGING_GARDEN
	if (tc_copy.y-baseLine <= -0) bg = float4(0.5000,0.2500,0.1250,1);
	#endif
	fg = fgInput;
	hl = highlightColor;


#ifdef FLIP_GRADIENT
	offset *= -1;
	bkFlip = -1;
#endif

#ifdef NORMAL_HIGHLIGHT
	alphaShade = true;
#endif
#ifdef MIRROR_HIGHLIGHT
	bool played = tc.x > cursorPos;
#else
	bool played = tc.x < cursorPos;
#endif
// Draw the shade first so if a position bar is shown, it doesn't cause flicker
// at its edge from the same line being painted in alternating bar/shade color.
// This happens if the bar is visible and colored before the shade since it
// doesn't take into account that the bar extends into the played area.
	if (played && shadePlayed) {
#if   defined(INNER_HIGHLIGHT)
		played = false;
		alphaShade = false;
		fg = highlightColor;
#endif
#if   defined(INVERT_HIGHLIGHT)
		played = false;
		alphaShade = false;
		float4 olColor;
		olColor = bgInput;
	#if  !defined(INNER_HIGHLIGHT) || defined(SOUNDCLOUD)
		bg = fgInput;
	#endif
		fg = olColor;
#endif
#if   defined(GRAYED_HIGHLIGHT)
		alphaShade = false;
	#if !defined(INNER_HIGHLIGHT)
		bg = grayscale( bgInput );
	#endif
		fg = grayscale( fgInput );
#elif defined(SEPIA_HIGHLIGHT)
		alphaShade = false;
	#if !defined(INNER_HIGHLIGHT)
		bg = sepia( bgInput );
	#endif
		fg = sepia( fgInput );
#elif defined(CSHIFT_HIGHLIGHT)
		alphaShade = false;
	#if !defined(INNER_HIGHLIGHT)
		bg = cshift( bgInput , realTime/10 % 360);
	#endif
		fg = cshift( fgInput , -180+realTime/10 % 360);
#endif
	}
	fg1 = fg;
	fg2 = fg1+0.3;
/*
	// if fg1 becomes equal to bg then make fg1 darker
	if (fg1.r == bg.r  && fg1.g == bg.g  && fg1.b == bg.b ) fg1 -= 0.1;
// uses a big chunk of calculation slots to do both... beats me why
	// and if fg2 becomes equal to fg1 then make fg2 lighter
	if (fg2.r == fg1.r && fg2.g == fg1.g && fg2.b == fg1.b) fg2 += 0.1;

// and if that makes fg2 equal to bg then make fg2 darker again
// not sure if this actually is needed. I mean fg2 never touches the background
// still, it can look weird in some combinations...too bad about the slots it uses
//	if (fg2.r == bg.r  && fg2.g == bg.g  && fg2.b == bg.b)  fg2 -= 0.15;
*/
#if  defined(CRAZY_COLORS)
// uses hardcoded colors to get the largest rotation
	bg  = bg + (tc_copy.y/4) * bkFlip;
	fg1 = cshift( hue(fg + tc_copy.y * offset),(realTime/2) % 360);
	fg2 = cshift( hue(fg - tc_copy.y * offset),(realTime/2) % 360);
#elif defined(RAINBOW_COLORS)
	fg  = float4(0.375,0.5,0.625,1);
	bg  =     bg +(tc_copy.y/4) * bkFlip;
	fg1 = hue(fg - tc_copy.y    * offset);
	fg2 = hue(fg + tc_copy.y    * offset);
#elif defined(GRADIENT_LDA)
	bg  = bg +    (tc_copy.y/4) *-bkFlip;
	fg1 = fg +     tc_copy.y    * offset;
	fg2 = fg -     tc_copy.y    * offset;
#elif defined(GRADIENT_LDS)
	bg  = bg + abs(tc_copy.y/4) *-bkFlip;
	fg1 = fg + abs(tc_copy.y)   * offset;
	fg2 = fg - abs(tc_copy.y)   * offset;
#endif

	bg  *= brightness;
	fg1 *= brightness;
	fg2 *= brightness;

	float4 wave;
//
// factors is a float4  .r=insideWave, .g=factorWave, .b=insideRms, .a=factor;
#if defined(USE_DEFAULT)
	wave = !factors.r ? bg : lerp(bg, fg1, do_blur ? blurFactor * factors.g : 1);
#else
	wave = !factors.r ? bg : factors.b ? fg2 : lerp(bg , fg1, factors.a);
#endif

#ifdef SOUNDCLOUD
	wave = wave * soundclouds.z;
#endif
	if (played && shadePlayed)
	{
		if (alphaShade)
	#ifdef HANGING_GARDEN
//			if (tc_copy.y-baseLine <= -0)
	#endif
			wave = lerp(wave, hl, shadeAlpha);
		else
			wave = !factors.r ? bg : factors.b ? fg2 : fg1;
	}

#if defined(GRID_VERTICAL) || defined(GRID_HORIZONTAL)
		wave = draw_grid(tc_copy, wave,dVP,  fd, baseLine, factors.r);
#endif

#if defined(BORDER_ON_HIGHLIGHT) || defined(BORDER_ON_FULLWIDTH) || defined(X_AXIS_ON_HIGHLIGHT) || defined(X_AXIS_ON_FULLWIDTH)
		wave = draw_border(wave, tc_copy, barThickness, dVP, fd, baseLine);
#endif
#if   defined(NORMAL_BAR)
		wave = bar(cursorPos, tc, wave, barThickness, cursorVisible);
		wave = bar(seekPos,   tc, wave, barThickness, seeking);
#elif defined(FADING_BAR)
		wave = faded_bar(cursorPos, tc_copy, wave, barThickness, cursorVisible, fadeFromTo.x, fadeFromTo.y);
		wave = faded_bar(seekPos,   tc_copy, wave, barThickness, seeking,       fadeFromTo.y, fadeFromTo.x);
#elif defined(INSIDE_BAR) || defined(OUTSIDE_BAR)
		wave = inverted_bar( cursorPos, tc, wave, barThickness, cursorVisible, factors.r);
		wave = inverted_bar( seekPos,   tc, wave, barThickness, seeking,       factors.r);
#endif

	return saturate(wave);
}
//------------------------------------------------------------------------------
// Pixel Shader Functions
//------------------------------------------------------------------------------
float4 PS( PS_IN input ) : SV_Target
{
	float fd;
	float2 dVP;
	float2 d = 1.0 / viewportSize;
//	float2 fudge = scrollSpeed * viewportSize / 100; // .
	float2 fudge = viewportSize / 100;

	if (horizontal)
	{
		dVP.x = d.x;
		dVP.y = d.y;
		fd = fudge.x;
	}
	else
	{
		dVP.x = d.y;
		dVP.y = d.x;
		fd = fudge.y;
	}

// used for soundcloud and borders (to draw x-axis in correct location)
	float baseLine = 0;
// used to control where the left edge is painted if borders visible
	float start = 0;
	float barThickness = dVP.x * barWidth;

#ifdef SOUNDCLOUD
	#ifdef FLIP_CLOUD
	baseLine = 1.0/3.0;
	#else
// puts the 'zero' line at 1/3 from bottom within -1,1 range
	baseLine = -1.0/3.0;
	#endif
#endif
#ifdef DO_SCROLL
// position the left edge border when scrolling is active
	start = -dVP.x/fd*4;
	barThickness = dVP.x * (barWidth / (trackDuration / fd)) * barWidth;
#endif

// initialize to background color for left part before the start of the track
	float4 c0 = backgroundColor;
// Evaluate now takes care of calling all of the separate functions
	if (input.tc.x > start && input.tc.x < 1.0-start) {
		c0 = evaluate(textColor, backgroundColor, input.tc, barThickness, dVP, fd, baseLine);
	}

	return c0;
}
//------------------------------------------------------------------------------
// Techniques
//------------------------------------------------------------------------------
technique Render9
{
	pass
	{
#if   defined(USE_PS_3_0)
// limited to 512+ calculation slots
		VertexShader = compile vs_3_0 VS();
		PixelShader = compile ps_3_0 PS();

#elif defined(USE_PS_2_b)
// limited to 512 calculation slots
		VertexShader = compile vs_2_b VS();
		PixelShader = compile ps_2_b PS();

#elif defined(USE_PS_2_a)
// limited to 512 calculation slots
		VertexShader = compile vs_2_a VS();
		PixelShader = compile ps_2_a PS();

#elif defined(USE_PS_2_0)
// limited to 64 calculation slots
		VertexShader = compile vs_2_0 VS();
		PixelShader = compile ps_2_0 PS();
#else
	#error PLEASE SELECT A SHADER MODEL IN TOP
#endif
	}

}
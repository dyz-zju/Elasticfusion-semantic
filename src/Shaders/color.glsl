/*
 * This file is part of ElasticFusion.
 *
 * Copyright (C) 2015 Imperial College London
 * 
 * The use of the code within this file and all code within files that 
 * make up the software that is ElasticFusion is permitted for 
 * non-commercial purposes only.  The full terms and conditions that 
 * apply to the code within this file are detailed within the LICENSE.txt 
 * file and at <http://www.imperial.ac.uk/dyson-robotics-lab/downloads/elastic-fusion/elastic-fusion-license/> 
 * unless explicitly stated.  By downloading this file you agree to 
 * comply with these terms.
 *
 * If you wish to use any of this code for commercial purposes then 
 * please email researchcontracts.engineering@imperial.ac.uk.
 *
 */

float encodeColor1(vec4 c)
{
    int rgb;
//if (c.w*255.0f==20.0f)
//{
//    rgb = int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if (c.w*255.0f==50.0f)
//{
//    rgb = int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else
if ((c.w*255.0f==90.0f))//((c.w*255.0f>88.0f)&&(c.w*255.0f<92.0f))
{
    rgb = int(round(0.0f * 255.0f));
    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
    rgb = (rgb << 8) + int(round(0.0f * 255.0f));//
    rgb = (rgb << 8) + int(round(c.w * 255.0f));
}
else if ((c.w*255.0f==120.0f))//((c.w*255.0f>115.0f)&&(c.w*255.0f<123.0f))
{
    rgb = int(round(1.0f * 255.0f));
    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
    rgb = (rgb << 8) + int(round(c.w * 255.0f));
}
//else if ((c.w*255.0f==150.0f))//((c.w*255.0f>148.0f)&&(c.w*255.0f<152.0f))
//{
//    rgb = int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
else if ((c.w*255.0f>158.0f)&&(c.w*255.0f<162.0f))
{
    rgb = int(round(0.5f * 255.0f));
    rgb = (rgb << 8) + int(round(0.1255f * 255.0f));
    rgb = (rgb << 8) + int(round(0.9412f * 255.0f));
    rgb = (rgb << 8) + int(round(c.w * 255.0f));
}
else //if (c.w*255.0f==0.0f)
{
    rgb = int(round(c.x * 255.0f));
    rgb = (rgb << 8) + int(round(c.y * 255.0f));
    rgb = (rgb << 8) + int(round(c.z * 255.0f));
    rgb = (rgb << 8) + int(round(c.w * 255.0f));
}
    return float(rgb);
}

float encodeColor0(vec4 c)
{
    int rgb;

//if (c.w*255.0f==20.0f)
//{
//    rgb = int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if (c.w*255.0f==50.0f)
//{
//    rgb = int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if (c.w*255.0f==90.0f)
//{
//    rgb = int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if (c.w*255.0f==120.0f)
//{
//    rgb = int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if (c.w*255.0f==150.0f)
//{
//    rgb = int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if (c.w*255.0f==160.0f)
//{
//    rgb = int(round(0.5f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.1255f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.9412f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else //if (c.w*255.0f==0.0f)
//{
    rgb = int(round(c.x * 255.0f));
    rgb = (rgb << 8) + int(round(c.y * 255.0f));
    rgb = (rgb << 8) + int(round(c.z * 255.0f));
    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
    return float(rgb);
}

vec4 decodeColor(float c)
{
    vec4 col;

    col.x = float(int(c) >> 24 & 0xFF) / 255.0f;
    col.y = float(int(c) >> 16 & 0xFF) / 255.0f;
    col.z = float(int(c) >> 8 & 0xFF) / 255.0f;
    col.w = float(int(c) & 0xFF) / 255.0f;

    return col;
}


float transformColorLabel(vec4 c)
{
    int rgb;

//if ((c.w*255.0f>10.0f)&&(c.w*255.0f<30.0f))
//{
//    rgb = int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if ((c.w*255.0f>40.0f)&&(c.w*255.0f<60.0f))
//{
//    rgb = int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if ((c.w*255.0f>80.0f)&&(c.w*255.0f<100.0f))
//{
//    rgb = int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));//
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else 
//if ((c.w*255.0f==120.0f)&&(c.w*255.0f<125.0f))
//{
//    rgb = int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if ((c.w*255.0f>130.0f)&&(c.w*255.0f<155.0f))
//{
//    rgb = int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(1.0f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else if ((c.w*255.0f>155.0f)&&(c.w*255.0f<170.0f))
//{
//    rgb = int(round(0.5f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.1255f * 255.0f));
//    rgb = (rgb << 8) + int(round(0.9412f * 255.0f));
//    rgb = (rgb << 8) + int(round(c.w * 255.0f));
//}
//else// ((c.w*255.0f>-10.0f)&&(c.w*255.0f<10.0f))
//if ((c.w*255.0f>-10.0f)&&(c.w*255.0f<10.0f))
{
    //return 1.0f;
    rgb = int(round(c.x * 255.0f));
    rgb = (rgb << 8) + int(round(c.y * 255.0f));
    rgb = (rgb << 8) + int(round(c.z * 255.0f));
    rgb = (rgb << 8) + int(round(c.w * 255.0f));
}
    return float(rgb);
}


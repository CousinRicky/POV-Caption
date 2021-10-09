/* caption_uniform.pov version 1.1.1A
 * Persistence of Vision Raytracer scene description file
 * POV-Ray Object Collection demo
 *
 * A comparison of macros Caption() and Caption_Uniform() in caption.inc.
 *
 * Copyright (C) 2016 - 2021 Richard Callwood III.  Some rights reserved.
 * This file is licensed under the terms of the CC-LGPL
 * a.k.a. the GNU Lesser General Public License version 2.1.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License version 2.1 as published by the Free Software Foundation.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  Please
 * visit https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html for
 * the text of the GNU Lesser General Public License version 2.1.
 *
 * Vers.  Date         Comments
 * -----  ----         --------
 *        2016-Apr-12  Created.
 * 1.1    2016-Apr-30  Uploaded.
 * 1.1.1  2019-Mar-30  No change.
 * 1.1.1A 2021-Oct-09  The license text is updated.
 */
#version 3.5;

#include "shapes.inc"
#include "caption.inc"

global_settings { assumed_gamma 1 }

background { rgb <0.50, 0.66, 1.00> }

camera
{ orthographic
  location -z
  right 8.8 * x
  up 6.6 * y
}

union
{ Caption ("Get", "", 0.1, red 1, rgb 1, -1)
  object { Caption ("yours", "", 0.1, red 1, rgb 1, -1) translate 2.08 * x }
  object { Caption ("today!", "", 0.1, red 1, rgb 1, -1) translate 5.0 * x }
  text
  { ttf "crystal" "Caption()" 1, <-0.05, 0>
    pigment { rgb 0 }
    scale 0.6
    translate <0, 1, 0>
  }
  translate <-3.8, 1.65, 0>
}

union
{ Center_Object
  ( Caption ("Get", "", 0.1, red 1, rgb 1, -1),
    y
  )
  Center_Object
  ( object { Caption ("yours", "", 0.1, red 1, rgb 1, -1) translate 2.08 * x },
    y
  )
  Center_Object
  ( object { Caption ("today!", "", 0.1, red 1, rgb 1, -1) translate 5.0 * x },
    y
  )
  text
  { ttf "crystal" "Caption()" 1, <-0.05, 0>
    pigment { rgb 0 }
    scale 0.6
    translate <0, 0.7, 0>
  }
  text
  { ttf "cyrvetic" "(vertically centered)" 1, 0
    pigment { rgb 0 }
    scale 0.55
    translate <2.7, 0.7, 0>
  }
  translate <-3.8, -0.25, 0>
}

union
{ Caption_Uniform ("Get", "", 0.1, red 1, rgb 1, -1)
  object
  { Caption_Uniform ("yours", "", 0.1, red 1, rgb 1, -1) translate 2.08 * x
  }
  object
  { Caption_Uniform ("today!", "", 0.1, red 1, rgb 1, -1) translate 5.0 * x
  }
  text
  { ttf "crystal" "Caption_Uniform()" 1, <-0.05, 0>
    pigment { rgb 0 }
    scale 0.6
    translate <0, 1, 0>
  }
  translate <-3.8, -2.75, 0>
}

// End of caption_uniform.pov

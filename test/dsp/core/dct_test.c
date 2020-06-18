/*-*- mode:c;indent-tabs-mode:nil;c-basic-offset:2;tab-width:8;coding:utf-8 -*-│
│vi: set net ft=c ts=2 sts=2 sw=2 fenc=utf-8                                :vi│
╞══════════════════════════════════════════════════════════════════════════════╡
│ Copyright 2020 Justine Alexandra Roberts Tunney                              │
│                                                                              │
│ This program is free software; you can redistribute it and/or modify         │
│ it under the terms of the GNU General Public License as published by         │
│ the Free Software Foundation; version 2 of the License.                      │
│                                                                              │
│ This program is distributed in the hope that it will be useful, but          │
│ WITHOUT ANY WARRANTY; without even the implied warranty of                   │
│ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU             │
│ General Public License for more details.                                     │
│                                                                              │
│ You should have received a copy of the GNU General Public License            │
│ along with this program; if not, write to the Free Software                  │
│ Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA                │
│ 02110-1301 USA                                                               │
╚─────────────────────────────────────────────────────────────────────────────*/
#include "dsp/core/core.h"
#include "libc/math.h"
#include "libc/stdio/stdio.h"
#include "libc/str/str.h"
#include "libc/testlib/ezbench.h"
#include "libc/testlib/testlib.h"
#include "libc/time/time.h"
#include "tool/viz/lib/formatstringtable-testlib.h"

TEST(dct, test) {
  float M[8][8] /* clang-format off */ = {
    {.509804, .513725, .094118, .219608, .027451, .294118, .172549, .658824},
    {.019608, .070588, .196078, .015686, .172549, .458824, .713725, .294118},
    {.380392, .341176, .235294, .737255, .741176, .968627, .607843,  .12549},
    {.560784, .843137, .639216, .929412, .756863, .113725, .643137, .435294},
    {.878431, .576471, .737255, .356863,      .8, .878431, .682353, .866667},
    {.780392, .070588, .866667, .607843, .792157,  .47451, .427451, .043137},
    {.133333, .976471, .698039, .662745, .035294, .207843, .831373, .627451},
    {.313725, .580392, .858824, .631373, .784314, .972549,  .27451,  .94902},
  } /* clang-format on */;
  dctjpeg(M);
  EXPECT_FLTMATRIXEQ(5, rint, 8, 8, M, "\n\
32.86666 -1.46274  -1.4456  -.43895 -1.17255   .19084   .05736   .01672\n\
-9.41551 -2.72135   3.7228  5.47448   .74604   .91144 -1.22542  -.41829\n\
-6.32875 -4.21755  4.42546 -3.86307 -1.93691  -2.1173  1.00377  -1.0752\n\
-2.58232  3.67887  5.65331  -.25753   .89732  1.09837   .93163   .61133\n\
 4.23922  1.36747  3.29469 -1.63407  2.78039  -3.0021    .7602  -.21367\n\
 -.11643  3.93022   .80678 -3.70514   .13347   .54381 -2.15087  -.52343\n\
  .64248  1.19093 -2.94494  2.66037   1.6624   .04414   .99807   .00514\n\
  .61622  -.76318   .75918   .41939  -.38075  -.30623   .09867  -.19237");
}

/* TEST(dct, test2) { */
/*   float M[8][8] /\* clang-format off *\/ = { */
/*     {.5,.5,.5,.5,.5,.5,.5,.5}, */
/*     {.5,.5,.5,.5,.5,.5,.5,.5}, */
/*     {.5,.5,.5,.5,.5,.5,.5,.5}, */
/*     {.5,.5,.5,.5,.5,.5,.5,.5}, */
/*     {.5,.5,.5,.5,.5,.5,.5,.5}, */
/*     {.5,.5,.5,.5,.5,.5,.5,.5}, */
/*     {.5,.5,.5,.5,.5,.5,.5,.5}, */
/*     {.5,.5,.5,.5,.5,.5,.5,.5}, */
/*   } /\* clang-format on *\/; */
/*   dctjpeg(M); */
/*   EXPECT_FLTMATRIXEQ(5, rint, 8, 8, M, "\n\ */
/* 32.86666 -1.46274  -1.4456  -.43895 -1.17255   .19084   .05736   .01672\n\ */
/* -9.41551 -2.72135   3.7228  5.47448   .74604   .91144 -1.22542  -.41829\n\ */
/* -6.32875 -4.21755  4.42546 -3.86307 -1.93691  -2.1173  1.00377  -1.0752\n\ */
/* -2.58232  3.67887  5.65331  -.25753   .89732  1.09837   .93163   .61133\n\ */
/*  4.23922  1.36747  3.29469 -1.63407  2.78039  -3.0021    .7602  -.21367\n\ */
/*  -.11643  3.93022   .80678 -3.70514   .13347   .54381 -2.15087  -.52343\n\ */
/*   .64248  1.19093 -2.94494  2.66037   1.6624   .04414   .99807   .00514\n\ */
/*   .61622  -.76318   .75918   .41939  -.38075  -.30623   .09867  -.19237"); */
/* } */

BENCH(dct, bench) {
  float M[8][8] /* clang-format off */ = {
    {.101961, .486275, .082353, .082353, .937255, .321569,  .14902, .270588},
    {.384314, .062745, .152941, .003922, .921569, .015686, .247059,       0},
    {.760784, .023529, .411765, .443137, .862745,  .85098, .435294, .631373},
    {.309804, .141176,  .54902, .984314, .478431,      .6, .364706, .643137},
    {.780392, .811765, .458824, .964706, .439216, .941176, .321569, .313725},
    {.596078, .207843, .133333, .345098, .278431, .192157,  .52549, .627451},
    {.952941, .090196, .290196, .717647, .686275, .713725,  .54902, .411765},
    {.109804, .121569, .403922,  .27451, .470588, .007843, .168627, .105882},
  } /* clang-format on */;
  void *data = tgc(tmalloc(sizeof(M)));
  EZBENCH2("dct", memcpy(data, M, sizeof(M)), EXPROPRIATE(dctjpeg(data)));
}
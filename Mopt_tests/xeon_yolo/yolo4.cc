#include <chrono>
#include "../header/original.h"
#include "../header/gen_ukr_bfxycwh_f16layout_1_128_136_136_64_3_3.h"
//#include "../header/gen_ukr_bfxycwh_1_64_224_224_3_3_3.h"
#include "../header/transpose.h"

void ukrimpl(float *A, float *B, float *oB, float *C, long long *oAstride,
             int b, int f, int x, int y, int c, int w, int h,
             vector<double> &gfloparray) {


    long long *ptAstride [28];
  // for (int i = 0; i < 6; i++) {
  //   oAstride[i] = i;
  // }
  // long long pAstride[28 * 6];
  // for (int t = 0; t < 28; t++)
  //   for (int i = 0; i < 6; i++) {
  //     pAstride[t * 6 + i] = oAstride[i];
  //   }
#pragma omp parallel  num_threads(28)
    {
        int tid = omp_get_thread_num();
        ptAstride[tid] = (long long int*)memalign(3072, 6*sizeof(long long int));
        for (int i = 0; i < 6; i++) {
            ptAstride[tid][i] = i;
        }
    }


    
  const int Nc = c;
  const int Nf = f;
  const int Nxy = x * y;

  const int Txy3 = 136*136;
  const int Tf3 = 128;
  const int Tc3 = 64;
  
  const int Txyp = 336*2;

  const int Txy2 = 336;
  const int Tf2 = 64;
  const int Tc2 = 44;

  const int Txy1 = 6;
  const int Tf1 = 16;
  const int Tc1 = 44;

  const int Txy0 = 6;
  const int Tf0 = 16;
  const int Tc0 = 1;

  double start = omp_get_wtime();
  // std::chrono::time_point<
  //     std::chrono::high_resolution_clock, std::chrono::nanoseconds> tbegin, tend;
  // double duration_ms = 0.0;
  

  // tbegin = std::chrono::high_resolution_clock::now();
  
  
  
#pragma omp parallel num_threads(28)
  {

    //  int tid = omp_get_thread_num();
    int tid = omp_get_thread_num();
//    long long *Astride = pAstride + tid * 6;
    long long *Astride = ptAstride[tid];
    int x1, y1, Aoffset, Boffset, Coffset;
    long long ctile;
    //      float*B = copyB[tid];

    // for (int idc = tid; idc<c; idc+=28) {
    //   for (int idw = 0; idw < w; idw++) {
    //       for (int idh = 0; idh < h; idh++) {
    //       for (int idf = 0; idf < f; idf++) {
    //         B[idf + idc * w * h * f + idw * h * f + idh * f] =
    //             oB[idf * c * w * h + idc * w * h + idw * h + idh];
    //       }
    //     }
    //   }
    // }
        for(int fpck = tid * 16; fpck < Nf; fpck+= 28*16){
            for(int cwh = 0; cwh< c*w*h; cwh+=8){
                transpose8x8_avx(oB+ (fpck+0)*c*w*h + cwh, B + fpck*c*w*h + cwh* 16 + 0, c*w*h, 16);
                transpose8x8_avx(oB+ (fpck+8)*c*w*h + cwh, B + fpck*c*w*h + cwh* 16 + 8, c*w*h, 16);
            }
        }
        // {
        //     int idc = tid/9;
        //     int idw = tid%9/3;
        //     int idh = tid%3;
        //     if(idc < 3){
        //         for (int idf = 0; idf < f; idf++) {
        //             B[(idf&15) + idc * w * h * 16 + idw * h * 16 + idh * 16 + (idf>>4)*c*w*h*16]=
        //             oB[idf * c * w * h + idc * w * h + idw * h + idh];
        //         }
        //     }
        // }
    

   // for (int idcwh = tid; idcwh < c*w*h; idcwh += 28) {
   //     int idh = idcwh%3;
   //     int idw = idcwh%9/3;
   //     int idc = idcwh/9;

   //      if(idc < c)
   //        for (int idf = 0; idf < f; idf++) {
   //          B[idf + idc * w * h * f + idw * h * f + idh * f] =
   //              oB[idf * c * w * h + idc * w * h + idw * h + idh];
   //        }

   //  }

#pragma omp barrier

        //  cout<<tid<<endl;
        for (int f4 = 0; f4 < Nf; f4 += Tf3) {
            for (int xy4 = 0; xy4 < Nxy; xy4 += Txy3) {
                for (int c4 = 0; c4 < Nc; c4 += Tc3) {                
          // L3 footprint

          for (int c3 = c4; c3 < (c4 + Tc3 > Nc ? Nc : c4 + Tc3); c3 += Tc2) {
//            for (int xyp = xy4 + tid * Txyp;
//                 xyp < std::min(xy4 + (tid + 1) * Txyp, Nxy); xyp += Txyp)
                //              for (int xy3 = xy4; xy3 < (xy4 + Txy3 > Nxy ?
                //              Nxy : xy4 + Txy3);
                //               xy3 += Txy2) {
                    for(int xyp = xy4 + tid * Txyp; xyp< std::min(xy4+Txy3, Nxy); xyp+=28*Txyp) 
                    for (int xy3 = xyp; xy3 < (xyp + Txyp > Nxy ? Nxy : xyp + Txyp);
                   xy3 += Txy2) {
                        for (int f3 = f4; f3 < (f4 + Tf3 > Nf ? Nf : f4 + Tf3);
                     f3 += Tf2) {

                  // L2 footprint
                  for (int c2 = c3; c2 < (c3 + Tc2 > Nc ? Nc : c3 + Tc2);
                       c2 += Tc1) {
                    for (int f2 = f3; f2 < (f3 + Tf2 > Nf ? Nf : f3 + Tf2);
                         f2 += Tf1) {
                      for (int xy2 = xy3;
                           xy2 < (xy3 + Txy2 > Nxy ? Nxy : xy3 + Txy2);
                           xy2 += Txy1) {
                        // L1 footprint
                        ctile = Tc1 > Nc - c2 ? Nc - c2 : Tc1;

                        for (int xy1 = xy2;
                             xy1 < (xy2 + Txy1 > Nxy ? Nxy : xy2 + Txy1);
                             xy1 += Txy0) {
                          x1 = xy1 / y;
                          y1 = xy1 % y;
                          Aoffset = c2 * (x + w - 1) * (y + h - 1) +
                                    x1 * (y + h - 1) + y1;
                          for (int f1 = f2;
                               f1 < (f2 + Tf1 > Nf ? Nf : f2 + Tf1);
                               f1 += Tf0) {
//                            Boffset = f1 + c2 * w * h * f;
                              Boffset = f1*c*w*h + c2*w*h*16;
                            Coffset = f1 * x * y + xy1;

                            // begin ukr
                            if (y - y1 > 6) {
                              //                            cout<<"ukr1\n";
                              //                            simu_ukr(A+Aoffset,
                              //                            B+Boffset,
                              //                            C+Coffset, ctile,
                              //                            16, 6, 3, 3,
                              //                            Astride, Aoffset,
                              //                            Boffset, Coffset);
                              cnn_ukr_float_scatter_6x2v_bfxy_bcxy_cwhf(
                                  A + Aoffset, B + Boffset, C + Coffset, ctile,
                                  Astride);
                            } else if (x * y - xy1 >= 6) {
                              //                            cout<<"ukr2\n";
                              for (int i = y - y1; i < 6; i++) {
                                Astride[i] += h - 1;
                              }
                              cnn_ukr_float_scatter_6x2v_bfxy_bcxy_cwhf(
                                  A + Aoffset, B + Boffset, C + Coffset, ctile,
                                  Astride);
                              //                            simu_ukr(A+Aoffset,
                              //                            B+Boffset,
                              //                            C+Coffset, ctile,
                              //                            16, 6, 3, 3,
                              //                            Astride, Aoffset,
                              //                            Boffset, Coffset);
                              for (int i = y - y1; i < 6; i++) {
                                Astride[i] -= h - 1;
                              }
                            } else {
                              cnn_ukr_float_scatter_4x2v_bfxy_bcxy_cwhf(
                                  A + Aoffset, B + Boffset, C + Coffset, ctile,
                                  Astride);
                              // partial_ukr(A + Aoffset, B + Boffset, C + Coffset,
                              //             ctile, 16, x * y - xy1, 3, 3, Astride, Aoffset,
                              //             Boffset, Coffset, b,f,x,y,c,w,h);
                            }

                            // end ukr
                          }
                        }

                        // end L1 footprint
                      }
                    }
                  }
                  // end L2 footprint
                }
              }
          }
          // end L3 footprint
        }
      }
    } // end loopnest
  }   // end paragma parallel

  double runtime = omp_get_wtime() - start;
//  tend = std::chrono::high_resolution_clock::now();
//  double runtime = std::chrono::duration_cast<std::chrono::duration<double> >
//      (tend - tbegin).count();
//  cout<<"runtime="<<runtime<<endl;
  double totflops = 1.0 * b * f * x * y * c * w * h *
                    2; // 100 * b * x * y * c * f * w * h * 2/6/16/32;
  double GFLOPS = totflops / 1000.0 / 1000.0 / 1000.0 / runtime;
  gfloparray.push_back(GFLOPS);
}

int main() {
  int Nb = 1;
  int Nf = 128;
  int Nc = 64;
  int Nx = 136;
  int Ny = 136;
  int Nw = 3;
  int Nh = 3;
  int totiter = 100;
  float *A;
  float *B;
  float *C;
  float *tmpB;

      vector<double> gfloparray;
  long long *Astride = (long long *)memalign(256, 6 * sizeof(long long));
  int bufsize =
      Nb * Nc * (Nx + Nw) * (Ny + Nh) + Nc * Nw * Nh * Nf + Nb * Nf * Nx * Ny;
  bufsize = bufsize / 4096 * 4096 * 2;
//  float *Unionbuf = (float *)memalign(4096, bufsize * sizeof(float));

  int alignment = 3072;
  A = (float*) memalign(alignment, Nb * Nc * (Nx + Nw) * (Ny + Nh)*sizeof(float) );
  B = (float*)memalign(alignment,  Nc * Nw * Nh * Nf*sizeof(float));
//  A = Unionbuf;
//  B = A + Nb * Nc * (Nx + Nw) * (Ny + Nh) / alignment * alignment + alignment;
  tmpB = (float *)memalign(4096, Nc * Nw * Nh * Nf * sizeof(float));
//  C = B + Nb * Nc * (Nx ) * (Ny ) / alignment * alignment + alignment;
  C = (float *)memalign(alignment, Nb * Nf * Nx * Ny * sizeof(float));

  float *tmpC = (float *)memalign(4096, Nb * Nf * Nx * Ny * sizeof(float));

  for (int i = 0; i < Nb * Nc * (Nx + Nw) * (Ny + Nh); i++) {
    A[i] = rand() % 10 + 1;
  }
  for (int i = 0; i < Nc * Nw * Nh * Nf; i++) {
    tmpB[i] = rand() % 10 + 2;
  }
  for (int i = 0; i < Nb * Nf * Nx * Ny; i++) {
    tmpC[i] = C[i] = rand() % 10 / 10.0;
  }

    float ressss;
    float tttmp[28];
    int flushsz=100000000;
  for (int iter = 0; iter < totiter; iter++) {

            float *dirty = (float *)malloc(flushsz * sizeof(float));
#pragma omp parallel for
            for (int dirt = 0; dirt < flushsz; dirt++){
                dirty[dirt] += dirt%100;
                tttmp[dirt%28] += dirty[dirt];
            }
            for(int ii =0; ii<28;ii++){ressss+= tttmp[ii];}
            cout<<"flush"<<ressss<<endl;            
            cout<<"start\n";

            ukrimpl(A, B, tmpB, C, Astride, Nb, Nf, Nx, Ny, Nc, Nw, Nh,
            gfloparray); // pack(copy) tmpB to B
            cout<<"end\n";
            free(dirty);
  }
  

  double avg_gflop = 0;
  for (auto fp : gfloparray) {
    cout << fp << endl;
    avg_gflop += fp;
  }
  avg_gflop /= gfloparray.size();
  cout << "avg gflop = " << avg_gflop << endl;

  if(totiter > 10){cout<<" to compare, set totiter < 10, return\n";return 0;}
  for (int iter = 0; iter < totiter; iter++) {
    origin_conv(A, tmpB, tmpC, Nb, Nf, Nx, Ny, Nc, Nw, Nh);
  }
  cout << "fin origin conv\n";

  //  debugtest1(A,B,C,tmpC, Astride, 44);

  compare(C, tmpC, Nb * Nf * Nx * Ny);
  return 0;
}
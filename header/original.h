#ifndef _ORIGINAL_H_
#define _ORIGINAL_H_
#include <assert.h>
#include <iostream>
#include <malloc.h>
#include <memory>
#include "omp.h"
#include <stdlib.h>
#include <time.h>
#include <vector>
using namespace std;
void origin_conv(float *In, float *Ker, float *Out, int Nb, int Nt, int Nx,
                 int Ny, int Ns, int Nw, int Nh) {

#pragma omp parallel for collapse(5)
  for (int b = 0; b < Nb; b++) {
    for (int t = 0; t < Nt; t++) {
      for (int x = 0; x < Nx; x++) {
        for (int y = 0; y < Ny; y++) {
            for (int s = 0; s < Ns; s++) {    
            for (int w = 0; w < Nw; w++) {
              for (int h = 0; h < Nh; h++) {

                Out[b * Nt * Nx * Ny + t * Nx * Ny + x * Ny + y] +=
                    In[b * Ns * (Nx + Nw - 1) * (Ny + Nh - 1) +
                       s * (Nx + Nw - 1) * (Ny + Nh - 1) +
                       (x + w) * (Ny + Nh - 1) + (y + h)] *
                    Ker[t * Ns * Nw * Nh + s * Nw * Nh + w * Nh + h];
                
              }
            }
          }
        }
      }
    }
  }
}

void compare(float *C1, float *C2, int size) {
  cout << "comparing" << endl;
  for (int i = 0; i < size; i++) {

    if (C1[i] != C2[i]) {
      cout << "data at " << i << " C1=" << C1[i] << ", C2=" << C2[i] << endl;
      exit(1);
    }
  }
  cout << "fin compare\n";
}


inline void partial_ukr(float *A, float *B, float *C, long long s_tile, int Rt, int Rxy, int Rw, int Rh, long long int* bcast_stride , int Aoff, int Boff, int Coff,
                 int Nb, int Nt, int Nx, int Ny,  int Ns, int Nw, int Nh
    ) {
    /*     int Nx = 112; */
    /* int Ny = 112; */
    /* int Nw = 3; */
    /* int Nh = 3; */
    /* int Nt = 128; */
    /* int Ns = 64; */
    /* int Nb = 1; */

//    cout<<"simu call"<<endl;
  for (int s = 0; s < s_tile; s++) {
      for (int xy = 0; xy < Rxy; xy++) {
        for (int w = 0; w < Rw; w++) {
          for (int h = 0; h < Rh; h++) {
              for (int t = 0; t < Rt; t++) {
            C[t * Nx * Ny + xy] +=
                A[s * (Nx + Nw -1) * (Ny + Nh -1) + bcast_stride[xy] + h + w * (Ny + Nh-1)] *
                B[t  + s * Nw * Nh * Nt + w * Nh*Nt + h*Nt];
            // if(Coff + t * Nx * Ny + xy==12540){
            //     cout<<"C12540 use A"<<s * (Nx + Nw -1) * (Ny + Nh -1) + bcast_stride[xy] + h + w * (Ny + Nh-1)+Aoff<<" and B"<<t  + s * Nw * Nh * Nt + w * Nh*Nt + h*Nt+Boff<<endl;
            // }
          }
        }
      }
    }
  }
}


inline void partial_ukr_peelker_16(float *A, float *B, float *C, long long s_tile, int Rt, int Rxy, int Rw, int Rh, long long int* bcast_stride , int Aoff, int Boff, int Coff,
                 int Nb, int Nt, int Nx, int Ny,  int Ns, int Nw, int Nh
    ) {
    /*     int Nx = 112; */
    /* int Ny = 112; */
    /* int Nw = 3; */
    /* int Nh = 3; */
    /* int Nt = 128; */
    /* int Ns = 64; */
    /* int Nb = 1; */

//    cout<<"simu call"<<endl;
  for (int s = 0; s < s_tile; s++) {
      for (int xy = 0; xy < Rxy; xy++) {
        for (int w = 0; w < Rw; w++) {
          for (int h = 0; h < Rh; h++) {
              for (int t = 0; t < Rt; t++) {
            C[t * Nx * Ny + xy] +=
                A[s * (Nx + Nw -1) * (Ny + Nh -1) + bcast_stride[xy] + h + w * (Ny + Nh-1)] *
                B[(t&15)  + s * Nw * Nh * 16 + w * Nh*16 + h*16 + (t>>4)*Ns*Nw*Nh*16];
//                B[t  + s * Nw * Nh * Nt + w * Nh*Nt + h*Nt];
            // if(Coff + t * Nx * Ny + xy==12540){
            //     cout<<"C12540 use A"<<s * (Nx + Nw -1) * (Ny + Nh -1) + bcast_stride[xy] + h + w * (Ny + Nh-1)+Aoff<<" and B"<<t  + s * Nw * Nh * Nt + w * Nh*Nt + h*Nt+Boff<<endl;
            // }
          }
        }
      }
    }
  }
}
//#endif


inline void partial_ukr_peelker_1_16_unroll3x3(float *A, float *B, float *C, long long s_tile, int Rt, int Rxy, int Rw, int Rh, long long int* bcast_stride , int Aoff, int Boff, int Coff,
                 int Nb, int Nt, int Nx, int Ny,  int Ns, int Nw, int Nh
    ) {
    /*     int Nx = 112; */
    /* int Ny = 112; */
    /* int Nw = 3; */
    /* int Nh = 3; */
    /* int Nt = 128; */
    /* int Ns = 64; */
    /* int Nb = 1; */

//    cout<<"simu call"<<endl;
  for (int s = 0; s < s_tile; s++) {
        for (int w = 0; w < 3; w++) {
          for (int h = 0; h < 3; h++) {
              for (int xy = 0; xy < 1; xy++) {
              for (int t = 0; t < 16; t++) {
            C[t * Nx * Ny + xy] +=
                A[s * (Nx + Nw -1) * (Ny + Nh -1) + bcast_stride[xy] + h + w * (Ny + Nh-1)] *
                B[(t)  + s * Nw * Nh * 16 + w * Nh*16 + h*16 ];
              }//end t
        }
      }
    }
  }
}



inline void partial_ukr_peelker_1_16_unroll1x1(float *A, float *B, float *C, long long s_tile, int Rt, int Rxy, int Rw, int Rh, long long int* bcast_stride , int Aoff, int Boff, int Coff,
                 int Nb, int Nt, int Nx, int Ny,  int Ns, int Nw, int Nh
    ) {
    /*     int Nx = 112; */
    /* int Ny = 112; */
    /* int Nw = 3; */
    /* int Nh = 3; */
    /* int Nt = 128; */
    /* int Ns = 64; */
    /* int Nb = 1; */

//    cout<<"simu call"<<endl;
  for (int s = 0; s < s_tile; s++) {
        for (int w = 0; w < 1; w++) {
          for (int h = 0; h < 1; h++) {
              for (int xy = 0; xy < 1; xy++) {
              for (int t = 0; t < 16; t++) {
            C[t * Nx * Ny + xy] +=
                A[s * (Nx + Nw -1) * (Ny + Nh -1) + bcast_stride[xy] + h + w * (Ny + Nh-1)] *
                B[(t)  + s * Nw * Nh * 16 + w * Nh*16 + h*16 ];
              }//end t
        }
      }
    }
  }
}


//inline void partial_f_13



inline void partial_ukr_peelker_13(float *A, float *B, float *C, long long s_tile, int Rt, int Rxy, int Rw, int Rh, long long int* bcast_stride , int Aoff, int Boff, int Coff,
                 int Nb, int Nt, int Nx, int Ny,  int Ns, int Nw, int Nh
    ) {
    /*     int Nx = 112; */
    /* int Ny = 112; */
    /* int Nw = 3; */
    /* int Nh = 3; */
    /* int Nt = 128; */
    /* int Ns = 64; */
    /* int Nb = 1; */

//    cout<<"simu call"<<endl;
  for (int s = 0; s < s_tile; s++) {
      for (int xy = 0; xy < Rxy; xy++) {
        for (int w = 0; w < Rw; w++) {
          for (int h = 0; h < Rh; h++) {
              for (int t = 0; t < Rt; t++) {
            C[t * Nx * Ny + xy] +=
                A[s * (Nx + Nw -1) * (Ny + Nh -1) + bcast_stride[xy] + h + w * (Ny + Nh-1)] *
//                B[(t&15)  + s * Nw * Nh * 13 + w * Nh*13 + h*13 + (t>>4)*Ns*Nw*Nh*16];
                B[t  + s * Nw * Nh * 13 + w * Nh*13 + h*13  ];
//                B[t  + s * Nw * Nh * Nt + w * Nh*Nt + h*Nt];

            // if(Coff + t * Nx * Ny + xy==12540){
            //     cout<<"C12540 use A"<<s * (Nx + Nw -1) * (Ny + Nh -1) + bcast_stride[xy] + h + w * (Ny + Nh-1)+Aoff<<" and B"<<t  + s * Nw * Nh * Nt + w * Nh*Nt + h*Nt+Boff<<endl;
            // }
          }
        }
      }
    }
  }

}

#endif
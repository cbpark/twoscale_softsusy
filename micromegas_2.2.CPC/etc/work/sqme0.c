#include<stdio.h>

int calcFunc_ext(void)
{ return 0;}

int cb_pow_ext=0;
int cb_nc_ext=0;
int * cb_chains_ext=NULL;
double * cb_coeff_ext=NULL;

void destroy_cb_ext(void) { return; }
void build_cb_ext(nsub) {  return; }
double sqme_ext(int nsub,  double * momenta, int * err) { if(err) *err=0; return 0; }

int gwidth_ext=0;
int rwidth_ext=0;
int twidth_ext=0;
double va_ext[1] ={0};

int nin_ext = 2;
int nout_ext = 2;
int nprc_ext = 0;

char * pinf_ext(int nsub,int nprtcl,double* pmass)
{
  static char name[4]="XX";
  if(pmass) *pmass=0;
  return name;
}


const int nvar_ext = 0;
const int nfunc_ext = 0;

char * varName_ext[1]={"P(cms)"};


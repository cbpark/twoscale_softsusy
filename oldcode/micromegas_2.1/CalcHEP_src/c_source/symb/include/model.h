#ifndef __MODEL__
#define __MODEL__

#define MAXINOUT 9

/* ================== variables ==================== */
#define VAR_NAME_SIZE 7
#define strongconst "GG"

typedef struct varrec
{
  char       varname[VAR_NAME_SIZE];
  int        need;
  int        hidden;
  double     varvalue;
  int        pwidth;
  char *     func;
} varrec;
typedef struct varrec *varlist;
                        
extern int        nmodelvar;
extern varlist    modelvars;

/*=================== particles ==================== */

#define P_NAME_SIZE 6
#define MAXVALENCE 4

typedef short particleNumType;

typedef struct modeofdecay
   {  
      struct modeofdecay *   next;
      particleNumType     part[MAXVALENCE-1];
   }  modeofdecay;
typedef struct modeofdecay *decaylink;


typedef struct prtcl_base
   {
      char    name[P_NAME_SIZE];
      long    N;    
      int          anti, spin;
      char         massidnt[VAR_NAME_SIZE], imassidnt[VAR_NAME_SIZE];
      int          cdim;
      int          hlp;      
      char *       latex;
      decaylink    top;
   }  prtcl_base;

extern int        nparticles;   /*  Number particles in model */
extern prtcl_base * prtclbase, *prtclbase1;

extern int pseudop(int       np);
extern int fermionp(int  p);
extern int a_fermionp(int p);
extern int bosonp(int    p);
extern int vectorp(int       p);
extern int zeromass(int      p);
extern int photonp(int       p);
extern int ghostp(int        p);
extern int ghostmother(int     j);
extern int gaugep(int         j);

extern void  locateinbase(char *   name,  int *   number);

/* ================== lagr ================*/

typedef int   arr4byte[4];
typedef struct algvert
{
   struct algvert *   next;
   int     fields[MAXVALENCE];
   int     perm[MAXVALENCE];
   int     factor;
   char *  comcoef;
   char *  description;
}  algvert;
typedef struct algvert *algvertptr;

extern algvertptr lgrgn;
extern char*EXTLIB;

#endif

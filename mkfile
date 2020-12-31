</$objtype/mkfile

LIB=libpng.$O.a

OBJ=\
	png.$O\
	pngerror.$O\
	pngget.$O\
	pngmem.$O\
	pngpread.$O\
	pngread.$O\
	pngrio.$O\
	pngrtran.$O\
	pngrutil.$O\
	pngset.$O\
	pngtrans.$O\
	pngwio.$O\
	pngwrite.$O\
	pngwtran.$O\
	pngwutil.$O\
	arm/arm_init.$O\
	arm/filter_neon_intrinsics.$O\
	arm/palette_neon_intrinsics.$O\
	mips/mips_init.$O\
	mips/filter_msa_intrinsics.$O\
	intel/intel_init.$O\
	intel/filter_sse2_intrinsics.$O\
	powerpc/powerpc_init.$O\
	powerpc/filter_vsx_intrinsics.$O

HFILES=\
	pngpriv.h\
	pngdebug.h\
	pnginfo.h\
	pngstruct.h\
	pngconf.h\
	pnglibconf.h\
	png.h\
	pnglibconf.h

<../nsport.mk

CFLAGS=$CFLAGS\
	-I ../zlib/\
	-DHAVE_CONFIG_H\
	-DPNGLIB_LIBNAME='PNG16_0'\
	-DPNGLIB_VERSION='1.6.37'\
	-DSYMBOL_PREFIX=''\
	-DPNG_NO_USE_READ_MACROS

<../nsportlib.mk

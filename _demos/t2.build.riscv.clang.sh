###############################################################################

mkdir -p build && pushd build

CC="clang" CROSS_COMPILE="llvm-" \
  CFLAGS="--target=riscv64-unknown-elf -mcmodel=medany -nostdlib -O2" \
  ../configure \
  --prefix=$PWD/install \
  --target=riscv64-unknown-elf \
  --disable-shared

bear -- make -j10
# $CONDA_PREFIX/../bear/bin/bear -- make -j10
# or
make -j10

make install

popd

###############################################################################

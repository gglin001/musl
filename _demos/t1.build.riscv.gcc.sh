###############################################################################

mkdir -p build && pushd build

args=(
  --prefix=$PWD/install
  --target=riscv64-unknown-elf
  --disable-shared
)
CFLAGS="-mcmodel=medany -nostdlib -O2" \
  ../configure "${args[@]}"

bear -- make -j10
# $CONDA_PREFIX/../bear/bin/bear -- make -j10
# or
make -j10

make install

popd

###############################################################################

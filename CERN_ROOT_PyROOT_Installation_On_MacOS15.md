## Preface
After I upgraded my MacOS to 15.3.2 version, the CERN-ROOT failed to work.

## Install Python3 stuff
```bash
python3 -m pip install numpy numba  cffi notebook metakernel protobuf pyspark dask ndistributed pytest pandas tensorflow-macos torch scikit-learn ipython jupyter
```

# 3 steps to reinstall ROOT-6.32.10
After upgrading xcode:
## Install pkg
Download and install `root_v6.32.10.macos-15.3-arm64-clang160.pkg`.

## Click through 'open anyway' pop-outs
Download and click ` root_v6.32.10.macos-15.3-arm64-clang160.tar.gz`, run `bin/root` to go through all the open anyway clicks in MacOS `System->Security`.

## Reinstall from source.
Download the source file: `root_v6.32.10.source.tar.gz', click it and make two directory `r6i` and `r6b`.

```bash
cd r6b
cmake -DCMAKE_INSTALL_PREFIX=../r6i ../root-6.32.10
make -j8
```
Once done, check if the PyROOT is ready.
```bash
python3 -c "import ROOT"
```



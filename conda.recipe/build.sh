#!/bin/bash

pushd bokehjs
npm install
popd

$PYTHON setup.py --quiet install --build-js --single-version-externally-managed --record=record.txt

mkdir $PREFIX/Examples
cp -r examples $PREFIX/Examples/bokeh

cd $PREFIX
echo $PREFIX

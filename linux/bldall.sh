#!/bin/bash
source root.sh

echo Build root is $BLDROOT

echo " "
echo  "BUILDING HASHTBL++++++++++++++++"
 
cd  ${BLDROOT}/dstruct/hashtbl/
rm -rf ./hashtbl
make hashtbl

echo " " 
echo  "BUILDING LIST+++++++++++++++++++"  
cd  ${BLDROOT}/dstruct/list/
rm -rf ./list
make list

echo " " 
echo  "BUILDING TREE+++++++++++++++++++"  
cd  ${BLDROOT}/dstruct/tree/
rm -rf ./tree
make tree

echo " " 
echo  "BUILDING HASM+++++++++++++++++++"  
cd  ${BLDROOT}/hasm/
rm -rf ./hasm
make hasm

echo " " 
echo  "BUILDING HECVM++++++++++++++++++"  
cd  ${BLDROOT}/hecvm/
rm -rf ./hecvm
make hecvm

echo " " 
echo  "BUILDING RAWBIN+++++++++++++++++"  
cd  ${BLDROOT}/rawbin/
rm -rf ./rawbin
make rawbin

echo " " 
echo  "BUILDING FILEDMP++++++++++++++++"  
cd  ${BLDROOT}/util/filedmp/
rm -rf ./filedmp
make filedmp

echo " " 
echo  "BUILDING NUMFMT+++++++++++++++++"  
cd  ${BLDROOT}/util/numfmt/
rm -rf ./numfmt
make numfmt

echo " " 
echo  "GO HOME+++++++++++++++++++++++++"  
cd  ${BLDROOT}

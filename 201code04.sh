#!/bin/bash

mkdir dir01 dir02 dir03 dir04

array_path=(dir01 dir02 dir03 dir04)

touch ${array_path[0]}/file01.txt
touch ${array_path[1]}/file02.txt
touch ${array_path[2]}/file03.txt
touch ${array_path[3]}/file04.txt
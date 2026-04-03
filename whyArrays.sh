#!/bin/bash
containerTool=docker
containerToolVer=1.13.1
cMangeTool=ansible
cMangeToolVer=2.9.27

echo ${containerTool}
echo ${containerToolVer}
echo ${cMangeTool}
echo ${cMangeToolVer}

declare -a containerInfo
declare -a cmtInfo
declare -a devopsToolsInfo

containerInfo=(docker 1.13.1)
cmtInfo=(ansible 2.9.27)
devopsToolsInfo=(jenkins docker ansible mvn)
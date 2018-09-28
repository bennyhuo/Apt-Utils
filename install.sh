#!/usr/bin/env bash
clear
./gradlew :aptutils:clean :aptutils:assemble :aptutils:generatePomFileForMavenPublication :aptutils:publishToMavenLocal
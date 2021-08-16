#!/usr/bin/env bash

set -e

# Compile the full GUI app
javac -classpath ../lib/jgaap-5.2.0-lite.jar:../lib/weka_3_7_9.jar:../lib/miglayout-4.0-swing.jar:../lib/org.annolab.tt4j-1.0.15.jar:../lib/Jama-1.0.3.jar:../lib/fasttag_v2.jar:../lib/jaws-bin.jar:../lib/jcommon-1.0.17.jar:../lib/jfreechart-1.0.14.jar:../lib/microsoft-translator-java-api-0.6.1-jar-with-dependencies.jar:../lib/stanford-postagger-2012-01-06.jar:../lib/ui.jar -sourcepath . edu/drexel/psal/anonymouth/gooie/ThePresident.java edu/drexel/psal/jstylo/eventDrivers/*.java edu/drexel/psal/jstylo/canonicizers/*.java edu/drexel/psal/jstylo/eventCullers/*.java

# Turn the compile class files into an executable jar file
jar -cmvf META-INF/MANIFEST.MF anonymouth.jar edu/drexel/psal/anonymouth/gooie/ThePresident.class edu/drexel/psal/anonymouth/gooie/*.class edu/drexel/psal/anonymouth/engine/*.class edu/drexel/psal/anonymouth/utils/*.class edu/drexel/psal/anonymouth/helpers/*.class edu/drexel/psal/*.class edu/drexel/psal/jstylo/generics/*.class edu/drexel/psal/jstylo/generics/*.class edu/drexel/psal/jstylo/analyzers/*.class edu/drexel/psal/jstylo/canonicizers/*.class edu/drexel/psal/jstylo/eventCullers/*.class edu/drexel/psal/jstylo/eventDrivers/*.class
# edu/drexel/psal/jstylo/GUI/*.class

mv anonymouth.jar ../


#wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_osx-x64_bin.tar.gz
#wget https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_macos-x64_bin.tar.gz
tar -xf openjdk-17_macos-x64_bin.tar.gz
cp jdk-17.jdk/Contents/Home/lib/src.zip ./
rm -rf jdk-17.jdk
unzip -oqd src src.zip
cp -rf src/jdk.compiler ./test
rm -rf test/jdk
mv test/sun/tools/serialver/ sjk/sun/tools/serialverx
mv test/com/sun test/com/test

#TODO. Do it within your IDE
#remove jdk.internal.shellsupport.doc line within module-info.java
#change "module sun.compiler" to "module test.compiler" within module-info.java
#replace "com.sun." within "com.test." for all java files
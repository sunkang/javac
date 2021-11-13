
#wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_osx-x64_bin.tar.gz
#wget https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_macos-x64_bin.tar.gz
tar -xf openjdk-17_macos-x64_bin.tar.gz
cp jdk-17.jdk/Contents/Home/lib/src.zip ./
rm -rf jdk-17.jdk
unzip -oqd src17 src.zip
cp -rf src17/jdk.compiler ./javac17
rm -rf src17
rm -rf javac17/jdk
mv javac17/sun/tools/serialver/ javac17/sun/tools/serialverx
mv javac17/com/sun javac17/com/test

tar -xf openjdk-11.0.2_osx-x64_bin.tar.gz
cp jdk-11.0.2.jdk/Contents/Home/lib/src.zip ./
rm -rf jdk-11.0.2.jdk
unzip -oqd src11 src.zip
cp -rf src11/jdk.compiler ./javac11
rm -rf src11
rm -rf javac11/jdk
mv javac11/sun/tools/serialver/ javac11/sun/tools/serialverx
mv javac11/com/sun javac11/com/test

#TODO. Do it within your IDE
#remove jdk.internal.shellsupport.doc line within module-info.java
#change "module sun.compiler" to "module test.compiler" within module-info.java
#replace "com.sun." within "com.test." for all java files
#replace "sun.tools.serialver" within "sun.tools.serialverx" for all java files
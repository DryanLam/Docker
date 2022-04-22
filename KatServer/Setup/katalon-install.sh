#!/bin/bash
echo "Install Katalon browser"


version="8.3.0"
KATALON_STUDIO_VERSION="$version"


# Download specific Firefox package
mkdir -p $KATALON_KATALON_ROOT_DIR
cd $KATALON_KATALON_ROOT_DIR


echo "Install Katalon"
katalon_version="$version"
katalon_directory="$version"
katalon_package="Katalon_Studio_Engine_Linux_64-$katalon_version.tar.gz"
katalon_unzipped_directory="Katalon_Studio_Engine_Linux_64-$katalon_version"
wget -O $katalon_package https://download.katalon.com/$katalon_version/Katalon_Studio_Engine_Linux_64-$katalon_version.tar.gz
ls
tar -xvzf $katalon_package -C $KATALON_KATALON_INSTALL_DIR_PARENT
ls
rm $katalon_package
mv $KATALON_KATALON_INSTALL_DIR_PARENT/$katalon_unzipped_directory $KATALON_KATALON_INSTALL_DIR
chmod u+x $KATALON_KATALON_INSTALL_DIR/katalonc
chmod -R u+x $KATALON_KATALON_INSTALL_DIR/configuration/resources/drivers

echo "$(firefox -version)" >> $KATALON_VERSION_FILE
echo "$(google-chrome --version)" >> $KATALON_VERSION_FILE || true
echo "Katalon Studio $version" >> $KATALON_VERSION_FILE

chmod -R 777 $KATALON_ROOT_DIR
chmod -R 777 $KATALON_SOFTWARE_DIR

cat $KATALON_VERSION_FILE
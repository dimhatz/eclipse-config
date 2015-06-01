#/bin/sh

config_dir=$HOME/eclipse-config
target_dir=$HOME/eclipse
old_dir=$HOME/eclipse-config_old
desktop_dir=$HOME/.local/share/applications
desktop_file=eclipse.desktop
files="
eclipse.sh
eclipse.svg
"

mkdir -p $old_dir
for file in $files; do
    echo "Moving any existing config files from $target_dir to $old_dir"
    mv --verbose $target_dir/$file $old_dir
    echo "Creating symlink to $file in target directory."
    ln -s --verbose $config_dir/$file $target_dir/$file
done

echo "Moving old .desktop from $desktop_dir"
mv --verbose $desktop_dir/$desktop_file $old_dir

echo "Installing new .desktop file in $desktop_dir"
cp --verbose $config_dir/$desktop_file $desktop_dir/

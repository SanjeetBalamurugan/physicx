os=$OSTYPE
toolset="vs2022"
vendor_folder=vendor
premake_dir=$vendor_folder/premake5
premake_exec=premake5

if [[ "$os" == "linux-gnu"* ]]; then
        ./$premake_dir/linux/$premake_exec $toolset
elif [[ "$os" == "darwin"* ]]; then
        ./$premake_dir/macos/$premake_exec $toolset
elif [[ "$os" == "cygwin" ]]; then
        ./$premake_dir/win32/$premake_exec.exe $toolset
elif [[ "$os" == "msys" ]]; then
        ./$premake_dir/win32/$premake_exec.exe $toolset
elif [[ "$os" == "win32" ]]; then
        ./$premake_dir/win32/$premake_exec.exe $toolset
elif [[ "$os" == "freebsd"* ]]; then
        ./$premake_dir/linux/$premake_exec $toolset
else
        echo "This PC is ???"
fi

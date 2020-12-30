# Port of xc function from oh-my-zsh xcode plugin
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/xcode/xcode.plugin.zsh
function xc --description "Opens the first xcworkspace/xcodeproj in the specified directory"
    set xcode_proj
    set swift_package
    set path $argv[1] "."

    set xcode_proj $path/*.{xcworkspace,xcodeproj}
    set swift_package $path/Package*.swift

    if count $xcode_proj > /dev/null
        echo "Found $xcode_proj[1]"
        open $xcode_proj[1]
        return 0
    else if count $swift_package > /dev/null
        echo "Found $swift_package[1]"
        open $swift_package[1]
        return 0
    end
    
    echo "No xcworkspace, xcodeproj or Package.swift found in $path"
    return 1
end

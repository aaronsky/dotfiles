# Port of xc function from oh-my-zsh xcode plugin
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/xcode/xcode.plugin.zsh

function xc -d "Opens the first xcworkspace/xcodeproj in the specified directory"
    set -l xcode_proj
    if count $argv > /dev/null
        set xcode_proj $argv[1]/*.{xcworkspace,xcodeproj}
    else
        set xcode_proj *.{xcworkspace,xcodeproj}
    end

    if count $xcode_proj > /dev/null
        echo "Found $xcode_proj[1]"
        open $xcode_proj[1]
    else
        if count $argv > /dev/null
            echo "No xcworkspace/xcodeproj file found in $argv[1]."
        else
            echo "No xcworkspace/xcodeproj file found in the current directory."
        end
        return 1
    end
end

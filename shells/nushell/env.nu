$env.PATH = (
    $env.PATH
    | split row (char esep)
    | prepend ($env.HOME | path join bin)
    | prepend ($env.HOME | path join .local bin)
    | prepend ($env.HOME | path join .cargo bin)
    | prepend ($env.HOME | path join go bin)
    | prepend /opt/homebrew/sbin
    | prepend /opt/homebrew/bin
    | uniq
)

$env.ANDROID_SDK_HOME = ($env.HOME | path join Library Android sdk)
$env.GOPATH = ($env.HOME | path join go)

let mise_path = $nu.default-config-dir | path join mise.nu
^mise activate nu | save $mise_path --force

let starship_path = $nu.default-config-dir | path join starship-init.nu
^starship init nu | save $starship_path --force

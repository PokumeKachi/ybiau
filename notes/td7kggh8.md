---
id: "td7kggh8"
date: 2026-03-27 10:04:59
tags: []
---

# To-do

## Graph

### For my passion

- Instead of Konfigkoll we have the options of pyinfra, Ansible, Salt, Puppet, Chef, Fabric

```mermaid
graph LR

Rust[Learn Rust]

    Rust-->Konfigkoll[Contribute to Konfigkoll]

        Konfigkoll-->Dotfiles[Set up Arch Dotfiles using Nix + Home Manager + GNU Stow + Konfigkoll]

            Dotfiles-->Zsh[Configure Zsh]
            Dotfiles-->Qute[Configure Qutebrowser]
            Dotfiles-->Security[Set up Syncthing and KeePassXC and HomeBank]
            Dotfiles-->Tiling[Set up Niri and Noctalia]

    Rust-->Sojua[Develop Sojua]

SvelteKit[Learn SvelteKit]
    SvelteKit-->Vercel[Polish PokumeKahi.Vercel.App]
        Vercel-->LoiMon[Develop LoiMon]

Kotlin[Learn Kotlin]
    Kotlin-->UltraCam[Build an app that uses OpenCV to suggest composition styles when taking photos]


Sew{Buy a sewing kit}

    Sew-->Personal[Make personally branded clothes like socks, cargo pants, cargo shorts, T-shirts, field jackets]
        Personal-->Jacket[Make a utility jacket]

Guitar{Buy a guitar}

Photo{Buy a camera, Canon EOS R50}
```
### For myself
```mermaid
graph TB

subgraph Strength
    Gym
    Marathon
    Basketball
end

subgraph Survival
    Drowning
    Assault[Physical Assault]
    Drugged[Being Drugged]
end

subgraph Health
    Diet
    Medications
end
```

## List

- [ ] Coding
    - [ ] Write my own Lua-Rust hybrid programming language

- Linux tinkering
    - [ ] Write a WM in Smithay
    - [ ] Setup lesspipe
    - [ ] Setup kitty images in NeoVim
    - [ ] Write HTMX web server for my ThinkPad T410

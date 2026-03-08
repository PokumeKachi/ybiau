_default:
    @just --choose

todo:
    taskwarrior-tui --taskdata .task

new:
    cd src && nvim "$(date +%Y-%m-%d_%H-%M-%S).md"


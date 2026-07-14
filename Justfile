_default:
    @just --choose

todo:
    taskwarrior-tui --taskdata .task

browse:
    ${EDITOR:-vi} notes/u8xuio4v.md

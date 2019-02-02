1 ) # light
gsettings set io.elementary.terminal.settings background $base3
gsettings set io.elementary.terminal.settings foreground $base00
gsettings set io.elementary.terminal.settings cursor-color $base00
gsettings set io.elementary.terminal.settings palette $solarized_palette
;;
2 ) # dark
gsettings set io.elementary.terminal.settings background $base03
gsettings set io.elementary.terminal.settings foreground $base0
gsettings set io.elementary.terminal.settings cursor-color $base0
gsettings set io.elementary.terminal.settings palette $solarized_palette
;;
3 ) # default
gsettings set io.elementary.terminal.settings background '#101010'
gsettings set io.elementary.terminal.settings foreground '#f2f2f2'
gsettings set io.elementary.terminal.settings cursor-color '#FFFFFF'
gsettings set io.elementary.terminal.settings palette $default_palette
esac

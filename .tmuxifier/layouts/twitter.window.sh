# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
# window_root "~"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "dev"

# split 30% horizontally into panes
split_h 30

##############
# set up twitter
##############
# bug where doesn't register first command, so run empty one
run_cmd ""
# set up feed
run_cmd "t stream timeline"

split_v 50
run_cmd ""
# display feed ids
run_cmd "t stream timeline -l"

split_v 50
# use for tweets
run_cmd ""
run_cmd "clear"

# Set active pane.
select_pane 0
run_cmd ""
run_cmd "clear"

easings() {
    tr -s ' ' < "$CONFIG/easings.txt"
}

easing_names() {
    easings | cut -d ' ' -f 1
}

get_easing_function() {
    name=$1

    easings | grep "$name" | cut -d ' ' -f 2-
}

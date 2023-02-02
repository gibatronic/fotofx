effects() {
    tr -s ' ' < "$CONFIG/effects.txt"
}

effect_names() {
    effects | cut -d ' ' -f 1
}

get_effect_behavior() {
    name=$1

    effects | grep "$name" | cut -d ' ' -f 2-
}

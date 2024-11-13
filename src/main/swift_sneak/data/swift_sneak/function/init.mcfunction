# Initialize the advancement that starts the check for proximity
advancement grant @a only swift_sneak:grant_check
# Schedule the function to check proximity every tick
schedule function swift_sneak:check_distance 1t
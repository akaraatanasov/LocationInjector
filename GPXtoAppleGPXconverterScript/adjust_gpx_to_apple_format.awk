awk
BEGIN {
    buffer = ""
}

{
    gsub(/<\/*trk>/,"",$0)
    gsub(/<\/*trkseg>/,"",$0)
    gsub(/<trkpt/,"<wpt", $0)
    gsub(/<\/trkpt>/,"<\/wpt>", $0)
}

/<wpt/,/<\/wpt>/ {
    buffer = buffer $0
    if ($0 !~ "<\/wpt>") {
        buffer = buffer "\n"
    }
}

/<\/wpt>/ {
    buffer = ""
}

END {
} $1
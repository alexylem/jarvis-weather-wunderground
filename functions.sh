ww_forecast () {
    local day_num=${1:-0}
    say "$(ww_lang i_check)"
    local json="$(curl -s "http://api.wunderground.com/api/$weather_wunderground_key/forecast/lang:$weather_wunderground_language/q/$weather_wunderground_city.json")"
    #$verbose && jv_debug "json: $json"
    local forecast=""
    [ "$day_num" -gt 0 ] && forecast+="$(echo "$json" | jq -r ".forecast.txt_forecast.forecastday[$day_num].title"): "
    forecast+="$(echo "$json" | jq -r ".forecast.txt_forecast.forecastday[$day_num].fcttext_metric")"
    #$verbose && jv_debug "forecast: $forecast"
    local humanized="$forecast"
    for replacement in "${ww_replacements[@]}"; do
        local old=${replacement%%:*}
        local new=${replacement#*:}
        humanized="$(echo "$humanized" | sed "s/$old/$new/g")"
    done
    say "$humanized"
}

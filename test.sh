for LEAF in 8
do
    input="./yahoo_"$LEAF"_out"
    while IFS=' ' read -r cache_size D S
    do
        cp "src/BWQS"$LEAF"bit_full_optm_yahoo.c" "src/BWQS"$LEAF"bit_full_optm_yahoo_"$D"_"$S".c"
        sed -i "s/#define D.*/#define D "$D" \/\/ d/g" "src/BWQS"$LEAF"bit_full_optm_yahoo_"$D"_"$S".c"
        sed -i "s/#define S.*/#define S "$S" \/\/ s/g" "src/BWQS"$LEAF"bit_full_optm_yahoo_"$D"_"$S".c"
    done < "$input"
done

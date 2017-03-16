for LEAF in 8 10 16 32 50 64 150
do
    input="./yahoo_"$LEAF"_out"
    while IFS=' ' read -r cache_size D S
    do
        cp "src/BWQS"$LEAF"bit_full_optm_yahoo.c" "src/BWQS"$LEAF"bit_full_optm_yahoo_"$D"_"$S".c"
        sed -i "s/#define D.*/#define D "$D" \/\/ d/g" "src/BWQS"$LEAF"bit_full_optm_yahoo_"$D"_"$S".c"
        sed -i "s/#define S.*/#define S "$S" \/\/ s/g" "src/BWQS"$LEAF"bit_full_optm_yahoo_"$D"_"$S".c"
        make
        target/"BWQS"$LEAF"bit_full_optm_yahoo_"$D"_"$S "-ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_"$LEAF"/tree-ensemble-file_20000_"$LEAF -instances /home/xin_jin/fast_rank/input/yahoo/100k.txt -maxLeaves $LEAF
    done < "$input"
done


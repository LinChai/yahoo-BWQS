for LEAF in 8 10 16 32 50 64 150
do
    while IFS=' ' read -r cache_size D S
    do
        cp src/BWQS$LEAF_full_optm_yahoo.c src/BWQS$LEAFbit_full_optm_yahoo_$D_$S.c
        sed -i "s/#define D.*/#define D $D \/\/ d/g" src/BWQS$LEAFbit_full_optm_yahoo_$D_$S.c
        sed -i "s/#define S.*/#define S $S \/\/ s/g" src/BWQS$LEAFbit_full_optm_yahoo_$D_$S.c
    done
done < "$input"

for LOOP in 1 2 3 4 5 6 7
do
    if [ "$LOOP" = "1" ]; then
        sed -i "s/#define D.*/#define D 1 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_1.c
        sed -i "s/#define S.*/#define S 100 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_1.c
        sed -i "s/#define D.*/#define D 3 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_2.c
        sed -i "s/#define S.*/#define S 50 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_2.c
        sed -i "s/#define D.*/#define D 6 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_3.c
        sed -i "s/#define S.*/#define S 1000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_3.c
        sed -i "s/#define D.*/#define D 17 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_4.c
        sed -i "s/#define S.*/#define S 640 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_4.c
        sed -i "s/#define D.*/#define D 38 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_5.c
        sed -i "s/#define S.*/#define S 500 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_5.c
        sed -i "s/#define D.*/#define D 385 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_6.c
        sed -i "s/#define S.*/#define S 1000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_6.c
        sed -i "s/#define D.*/#define D 328 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_7.c
        sed -i "s/#define S.*/#define S 1500 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_7.c
        sed -i "s/#define D.*/#define D 283 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_8.c
        sed -i "s/#define S.*/#define S 2000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_8.c
        sed -i "s/#define D.*/#define D 216 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_9.c
        sed -i "s/#define S.*/#define S 3000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_9.c
        sed -i "s/#define D.*/#define D 134 \/\/ d/g" src/BWQS8bit_full_optm_yahoo_8_10.c
        sed -i "s/#define S.*/#define S 5000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo_8_10.c
        
        LEAF=8
        make
        echo "result of Leaf_num=$LEAF"
        for VAR in 1 2 3 4 5 6 7 8 9 10
        do
            echo 'BWQS8bit_full_optm_yahoo_8_'$VAR
            target/BWQS8bit_full_optm_yahoo_8_$VAR -ensemble ./fast_rank/yahoo/tree-ensemble-file_20000_$LEAF -instances ./fast_rank/yahoo/100k.txt -maxLeaves $LEAF
        done    
    fi
    if ["$LOOP" = "2"]; then
        sed -i "s/#define D.*/#define D 1 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_1.c
        sed -i "s/#define S.*/#define S 75 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_1.c
        sed -i "s/#define D.*/#define D 2 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_2.c
        sed -i "s/#define S.*/#define S 50 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_2.c
        sed -i "s/#define D.*/#define D 31 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_3.c
        sed -i "s/#define S.*/#define S 200 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_3.c
        sed -i "s/#define D.*/#define D 3 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_4.c
        sed -i "s/#define S.*/#define S 800 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_4.c
        sed -i "s/#define D.*/#define D 15 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_5.c
        sed -i "s/#define S.*/#define S 500 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_5.c
        sed -i "s/#define D.*/#define D 297 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_6.c
        sed -i "s/#define S.*/#define S 1000 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_6.c
        sed -i "s/#define D.*/#define D 234 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_7.c
        sed -i "s/#define S.*/#define S 1500 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_7.c
        sed -i "s/#define D.*/#define D 189 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_8.c
        sed -i "s/#define S.*/#define S 2000 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_8.c
        sed -i "s/#define D.*/#define D 169 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_9.c
        sed -i "s/#define S.*/#define S 3000 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_9.c
        sed -i "s/#define D.*/#define D 67 \/\/ d/g" src/BWQS16bit_full_optm_yahoo_10_10.c
        sed -i "s/#define S.*/#define S 5000 \/\/ s/g" src/BWQS16bit_full_optm_yahoo_10_10.c
      
        LEAF=10
    fi
    if ["$LOOP" = "3"]; then
        LEAF=16
    fi
    if ["$LOOP" = "4"]; then
        LEAF=32
    fi
    if ["$LOOP" = "5"]; then
        LEAF=50
    fi
    if ["$LOOP" = "6"]; then
        LEAF=64
    fi
    if ["$LOOP" = "7"]; then
        LEAF=150
    fi
   
    for VAR in 1 2 3 4 5 6 7 8 9 10
    do
        echo 'BWQS8bit_full_optm_yahoo_8_'$VAR
        out/BWQS8bit_full_optm_yahoo_8_$VAR -ensemble ./fast_rank/yahoo/tree-ensemble-file_20000_$LEAF -instances ./fast_rank/yahoo/100k.txt -maxLeaves $LEAF
    done
    

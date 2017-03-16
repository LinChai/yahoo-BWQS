for LOOP in 1 2 3 4 5 6 7
do
    if [ "$LOOP" = "1" ]; then
        sed -i "s/#define D.*/#define D 1 \/\/ d/g" src/BWQS8bit_full_optm_yahoo1.c
        sed -i "s/#define S.*/#define S 100 \/\/ s/g" src/BWQS8bit_full_optm_yahoo1.c
        sed -i "s/#define D.*/#define D 3 \/\/ d/g" src/BWQS8bit_full_optm_yahoo2.c
        sed -i "s/#define S.*/#define S 50 \/\/ s/g" src/BWQS8bit_full_optm_yahoo2.c
        sed -i "s/#define D.*/#define D 6 \/\/ d/g" src/BWQS8bit_full_optm_yahoo3.c
        sed -i "s/#define S.*/#define S 1000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo3.c
        sed -i "s/#define D.*/#define D 17 \/\/ d/g" src/BWQS8bit_full_optm_yahoo4.c
        sed -i "s/#define S.*/#define S 640 \/\/ s/g" src/BWQS8bit_full_optm_yahoo4.c
        sed -i "s/#define D.*/#define D 38 \/\/ d/g" src/BWQS8bit_full_optm_yahoo5.c
        sed -i "s/#define S.*/#define S 500 \/\/ s/g" src/BWQS8bit_full_optm_yahoo5.c
        sed -i "s/#define D.*/#define D 385 \/\/ d/g" src/BWQS8bit_full_optm_yahoo6.c
        sed -i "s/#define S.*/#define S 1000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo6.c
        sed -i "s/#define D.*/#define D 328 \/\/ d/g" src/BWQS8bit_full_optm_yahoo7.c
        sed -i "s/#define S.*/#define S 1500 \/\/ s/g" src/BWQS8bit_full_optm_yahoo7.c
        sed -i "s/#define D.*/#define D 283 \/\/ d/g" src/BWQS8bit_full_optm_yahoo8.c
        sed -i "s/#define S.*/#define S 2000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo8.c
        sed -i "s/#define D.*/#define D 216 \/\/ d/g" src/BWQS8bit_full_optm_yahoo9.c
        sed -i "s/#define S.*/#define S 3000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo9.c
        sed -i "s/#define D.*/#define D 134 \/\/ d/g" src/BWQS8bit_full_optm_yahoo10.c
        sed -i "s/#define S.*/#define S 5000 \/\/ s/g" src/BWQS8bit_full_optm_yahoo10.c
        LEAF=8
    fi
    if ["$LOOP" = "2"]; then
        LEAF=50
    fi
     if ["$LOOP" = "3"]; then
        LEAF=150
    fi
    make
    echo "result of Leaf_num=$LEAF"
    for VAR in 1 2 3 4 5 6 7 8 9 10
    do
        echo 'BWQS8bit_full_optm_yahoo'$VAR
        out/BWQS8bit_full_optm_yahoo$VAR -ensemble ./fast_rank/yahoo/tree-ensemble-file_20000_$LEAF -instances ./fast_rank/yahoo/100k.txt -maxLeaves $LEAF
    done
    

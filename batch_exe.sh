sed -i "s/#define D.*/#define D 44 \/\/ d/g" src/BWQS8bit_full_optm_yahoo1.c

for LOOP in 1 2 3
do
    if [ "$LOOP" = "1" ]; then
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/ThreadSDSD_StructPlus1.c
        LEAF=10
    fi
    if ["$LOOP" = "2"]; then
        LEAF=50
    fi
     if ["$LOOP" = "3"]; then
        LEAF=150
    fi
    make

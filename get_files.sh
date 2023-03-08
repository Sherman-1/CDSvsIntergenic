#!/bin/sh

'''
Copy genomes files from Paul to my data space on cluster
'''

phylo="/run/user/5195/gvfs/smb-share:server=store.intra.i2bc.paris-saclay.fr,share=equipes/BIM/MEMBERS/paul.roginski/Eukaryotes/PHYLO/"
gen="/run/user/5195/gvfs/smb-share:server=store.intra.i2bc.paris-saclay.fr,share=equipes/BIM/MEMBERS/simon.herman/Genomes/"
cd $phylo

for directory in *_NEXT SCUL RSIA RCCF PMAC MRES EHIS CJAV HOPU MMUS    
do
    echo $directory

    if [ -d "$directory/GENOMES" ]; then

        mkdir "$gen/$directory"
        cd "$directory/GENOMES"
        cp *.gff *.fna *.genome "$gen/$directory"
        cd ../..
    fi
done



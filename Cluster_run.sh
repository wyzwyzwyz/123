###
 # @Description: 
 # @Version: 
 # @Author: Yang jin
 # @Date: 2022-02-16 08:52:02
 # @LastEditors: Yang jin
 # @LastEditTime: 2022-03-25 07:56:43
### 

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --save_flag   --input    /workspace/CAMI-contigs/mice-gut/1202/encode-02-cls/ --output /workspace/CAMI-contigs/mice-gut/1202/ours-64/  --dim 64      

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/CAMI-contigs/mice-gut/1202/ours-64/contig-name2embeds-d64.pk --output /workspace/CAMI-contigs/mice-gut/1202/ours-64/ --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 4 --delta_x 0.05 --label_path /workspace/CAMI-contigs/mice-gut/reference.tsv --length_path /workspace/CAMI-contigs/mice-gut/length.pk  --metric euclidean --abundance_path /workspace/CAMI-contigs/mice-gut/abundance.pk --reduced --min_length 2000



# python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/airways/1222/ours/contig-name2embeds-d32.pk --output /workspace/vamb-data/airways/0123/ --cuda --normalized --search_steps 25 --windowsize 500 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.05 --label_path /workspace/vamb-data/airways/reference.tsv --length_path /workspace/vamb-data/airways/contigs.fa_length.pk --multisplit_flag --metric euclidean --abundance_path /workspace/vamb-data/airways/abundance.pk --reduced


# python /workspace/metagenomic_bining/SeqEmbedding/scripts/vamb-data/dSbin.py --data_file /workspace/vamb-data/airways/get_tnf/tnf.npz --contig_names_file /workspace/vamb-data/airways/get_tnf/names.npz --output /workspace/vamb-data/airways/0123/merge_by_tnf_mi100_thr0.5_k1000_cosine.tsv  --metric cosine



#only encode-data
#airways 
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/airways/1222/ours/contig-name2embeds-d32.pk --output /workspace/vamb-data/airways/1222/only-encode --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/airways/reference.tsv --length_path /workspace/vamb-data/airways/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

#gi
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/gi/1202/ours/contig-name2embeds-d32.pk --output /workspace/vamb-data/gi/1202/only-encode --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/gi/reference.tsv --length_path /workspace/vamb-data/gi/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced


#oral
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/urog/1202/ours/contig-name2embeds-d32.pk --output /workspace/vamb-data/gi/1202/only-encode --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/oral/reference.tsv --length_path /workspace/vamb-data/skin/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced
# skin
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/skin/1202/ours/contig-name2embeds-d32.pk --output /workspace/vamb-data/skin/1202/only-encode --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/skin/reference.tsv --length_path /workspace/vamb-data/skin/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced


# urog
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/skin/1202/ours/contig-name2embeds-d32.pk --output /workspace/vamb-data/urog/1202/only-encode --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/urog/reference.tsv --length_path /workspace/vamb-data/urog/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced



#only abundance
#airways 
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/airways/abundance.pk --output /workspace/vamb-data/airways/1222/only-abundance --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/airways/reference.tsv --length_path /workspace/vamb-data/airways/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

#gi
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/gi/abundance.pk --output /workspace/vamb-data/gi/1202/only-abundance --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/gi/reference.tsv --length_path /workspace/vamb-data/gi/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

#oral
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/oral/abundance.pk --output /workspace/vamb-data/oral/1202/only-abundance --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/oral/reference.tsv --length_path /workspace/vamb-data/oral/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

# skin
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/skin/abundance.pk --output /workspace/vamb-data/skin/1202/only-abundancee --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/skin/reference.tsv --length_path /workspace/vamb-data/skin/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

# urog
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/urog/abundance.pk --output /workspace/vamb-data/urog/1202/only-abundance --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.005 --label_path /workspace/vamb-data/urog/reference.tsv --length_path /workspace/vamb-data/urog/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

# mother-infant 
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/mother/megahit/3-1202/ours/contig-name2embeds-d32.pk --abundance_path /workspace/mother/megahit/3_abundance.pk --output /workspace/mother/megahit/3-1202/ours-with-abundance --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.0005  --length_path /workspace/mother/megahit/3-length.pk --metric euclidean  --reduced --min_length 2000

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input  /workspace/mother/megahit/4-1202/ours/contig-name2embeds-d32.pk  --abundance_path /workspace/mother/megahit/4_abundance.pk --output /workspace/mother/megahit/4-1202/ours-with-abundance --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.0005  --length_path /workspace/mother/megahit/4-length.pk  --metric euclidean  --reduced --min_length 2000


##################
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --save_flag   --input    /workspace/vamb-data/airways/1202/corpus3/encode-02-cls --output /workspace/vamb-data/airways/1202/corpus3  --dim 64      

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --save_flag   --input    /workspace/vamb-data/airways/1202/corpus4/encode-02-cls --output /workspace/vamb-data/airways/1202/corpus4  --dim 64  

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --save_flag   --input    /workspace/vamb-data/airways/1202/corpus5/encode-02-cls --output /workspace/vamb-data/airways/1202/corpus5  --dim 64   

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --save_flag   --input    /workspace/vamb-data/airways/1202/corpus7/encode-02-cls --output /workspace/vamb-data/airways/1202/corpus7  --dim 32


###
python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/airways/1202/corpus3/contig-name2embeds-d64.pk --abundance_path /workspace/vamb-data/airways/abundance.pk --output /workspace/vamb-data/airways/1202/corpus3 --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.0005 --label_path /workspace/vamb-data/airways/reference.tsv --length_path /workspace/vamb-data/airways/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/airways/1202/corpus4/contig-name2embeds-d64.pk --abundance_path /workspace/vamb-data/airways/abundance.pk --output /workspace/vamb-data/airways/1202/corpus4 --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.0005 --label_path /workspace/vamb-data/airways/reference.tsv --length_path /workspace/vamb-data/airways/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/airways/1202/corpus5/contig-name2embeds-d64.pk --abundance_path /workspace/vamb-data/airways/abundance.pk --output /workspace/vamb-data/airways/1202/corpus5 --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.0005 --label_path /workspace/vamb-data/airways/reference.tsv --length_path /workspace/vamb-data/airways/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced

python /workspace/metagenomic_bining/SeqEmbedding/src/vambClusterParsedv2.py --contig_flag --input /workspace/vamb-data/airways/1202/corpus7/contig-name2embeds-d64.pk --abundance_path /workspace/vamb-data/airways/abundance.pk --output /workspace/vamb-data/airways/1202/corpus7 --cuda --normalized --search_steps 25 --windowsize 200 --minsuccesses 20 --max_radius 3.0 --medoid_radius 2.0 --xmax 5 --delta_x 0.0005 --label_path /workspace/vamb-data/airways/reference.tsv --length_path /workspace/vamb-data/airways/contigs.fa_length.pk --multisplit_flag --metric euclidean  --reduced


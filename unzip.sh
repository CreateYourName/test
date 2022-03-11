mv *.zip dataset
lines=`ls dataset | wc -w`
datasetUnzip='datasetUnzip'
i=0

for line in `ls -l dataset/ | awk '{print $9}'`
do
	let i++
	echo $line 
	echo '正在处理'$i'/'$lines
	unzip dataset/$line -d $datasetUnzip
done

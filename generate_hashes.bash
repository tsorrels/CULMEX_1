
for filename in /etc/*; do
	md5sum $filename >> hashes
done

# exit on failure
set -e
# echo commands as they are run
set -o verbose


cd "$( dirname "${BASH_SOURCE[0]}" )"
THIS_DIR=`pwd`
echo $THIS_DIR
BUILD_DIR=/tmp/poster/roadrunner

mkdir -p $BUILD_DIR
cd $BUILD_DIR
rsync -av $THIS_DIR/ .
ls -la
lualatex tikzposter-example.tex && evince tikzposter-example.pdf &

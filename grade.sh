# Create your grading script here

rm -rf student-submission
git clone $1 student-submission
cd student-submission
echo "Cloned student submission!"
error=0
CP="..:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar"
javac -cp $CP *.java
if [ $? -ne 0 ]
then
    echo "Compiler error!"
    exit 1
fi

java -cp $CP org.junit.runner.JUnitCore TestListExamples 2> error.txt

if [ $(grep -c "testFilter" error.txt) -ne 0 ]
then
    $error += 1
    echo "testFilter failed!"
fi

if [ $(grep -c "testMerge" error.txt) -ne 0 ]
then
    $error += 1
    echo "testMerge failed!"
fi

if [ $error -eq 2 ]
then
    echo "Score: 0/2"
fi

if [ $error -eq 1 ]
then
    echo "Score: 1/2"
fi

if [ $error -eq 0 ]
then
    echo "Score: 2/2"
fi


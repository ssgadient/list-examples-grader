# Create your grading script here

rm -rf student-submission
git clone $1 student-submission
echo "Cloned student submission!"
error=0
javac -target 1.8 -cp ".:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar" ListExamples.java TestListExamples.java
CP="..:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar"
cd student-submission

ls -a > fileList.txt
if [ $(grep -c "ListExamples.java" fileList.txt) -eq 0 ]
then
    echo "\"ListExamples.java\" was not found!"
    exit 1
fi

javac -cp $CP *.java

if [ $? -ne 0 ]
then
    echo "Compiler error!"
    exit 1
fi

cp ListExamples.class ..
java -cp $CP org.junit.runner.JUnitCore TestListExamples > error.txt
cp ../ListExamples.class .
if [ $(grep -c "testFilter" error.txt) -ne 0 ]
then
    let "error+=1"
    echo "[FAILED 0/1] testFilter"
else
    echo "[PASSED 1/1] testFilter"
fi

if [ $(grep -c "testMerge" error.txt) -ne 0 ]
then
    let "error+=1"
    echo "[FAILED 0/1] testMerge"
else
    echo "[PASSED 1/1] testMerge"
fi

if [ $error -eq 2 ]
then
    echo "Score: 0/2"
    echo "See error.txt file in student-submission for details"
fi

if [ $error -eq 1 ]
then
    echo "Score: 1/2"
    echo "See error.txt file in student-submission for details"
fi

if [ $error -eq 0 ]
then
    echo "Score: 2/2"
fi

echo "Enter a number (1 - 5) indicating the task number"
read number
cd "Task ${number}"
# Execute the m-script with Matlab
matlab -r "run('./main.m')"

echo "Enter a number (1 - 3) indicating the task number"
read number
cd "Task ${number}"
# Execute the m-script with Matlab
matlab -r "run('./main.m')"

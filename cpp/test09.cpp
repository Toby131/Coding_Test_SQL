#include <string>
#include <vector>
#include <algorithm>
using namespace std;

long long solution(long long n) {
    long long answer = 0;
    string temp = to_string(n);
    sort(temp.begin(), temp.end(), greater<char>()); //string 873211
    answer = stoll(temp);
    return answer;
}
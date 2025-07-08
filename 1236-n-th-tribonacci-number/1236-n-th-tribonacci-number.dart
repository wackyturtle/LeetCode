class Solution {
  int tribonacci(int n) {
    List tri = [0, 1, 1];
    int result = 2;

    for(int i=3; i <= n; i++){
      tri.add(tri[i-1] + tri[i-2] + tri[i-3]);
    }
    print('입력: $n');
    print('출력: ${tri[n]}');
    print(tri);
    return tri[n];
  }
}
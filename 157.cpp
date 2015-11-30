#include <iostream>
#include <vector>
#include <string>
#include <cstring>
#include <algorithm>
#include <sstream>
#include <map>
#include <set>
#include <cmath>

#define REP(i,k,n) for(int i=k;i<n;i++)
#define rep(i,n) for(int i=0;i<n;i++)
#define INF 1<<30
#define pb push_back
#define mp make_pair

using namespace std;
typedef long long ll;
typedef pair<int,int> P;

ll func(int x) {
	if(x == 1) return 10;
	else return 10 * func(x-1);
}

vector<ll> divisor(ll n) {
	vector<ll> res;
	for(ll i = 2; i*i <= n; i++) {
		if(n % i == 0) {
			res.push_back(i);
			if(i != n/i) res.push_back(n/i);
		}
	}
	return res;
}

int main() {
	ll ans = 0;

	REP(n, 1, 10) {

	ll p = func(n);

	vector<ll> res = divisor(p);
	res.push_back(1);
	res.push_back(p);

	sort(res.begin(), res.end());
	res.erase(unique(res.begin(),res.end()),res.end());

	ll cnt = 0;
	rep(i, res.size()) {
		REP(j, i, res.size()) {
			if(__gcd(res[i], res[j]) != 1) continue;
			cout << res[i] << " " << res[j] << " " << res[i] * res[j] << endl;

			ll a = res[i] + res[j];
			ll b = res[i] * res[j];
			ll t = a * (p / b);

			vector<ll> ret = divisor(t);
			cnt += ret.size() + 2;
		}
	}

	cout << cnt << endl;
	ans += cnt;
	}

	cout << ans << endl;

	return 0;
}

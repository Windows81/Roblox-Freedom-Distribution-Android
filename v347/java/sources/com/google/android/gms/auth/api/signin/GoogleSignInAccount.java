package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static d f3285a = g.d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3288d;
    private String e;
    private String f;
    private Uri g;
    private String h;
    private long i;
    private String j;
    private List<Scope> k;
    private String l;
    private String m;
    private Set<Scope> n = new HashSet();

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.f3286b = i;
        this.f3287c = str;
        this.f3288d = str2;
        this.e = str3;
        this.f = str4;
        this.g = uri;
        this.h = str5;
        this.i = j;
        this.j = str6;
        this.k = list;
        this.l = str7;
        this.m = str8;
    }

    public static GoogleSignInAccount a(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl", null);
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        return a(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), uri, Long.valueOf(j), jSONObject.getString("obfuscatedIdentifier"), hashSet).b(jSONObject.optString("serverAuthCode", null));
    }

    public static GoogleSignInAccount a(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, String str7, Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(f3285a.a() / 1000);
        }
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), w.a(str7), new ArrayList((Collection) w.a(set)), str5, str6);
    }

    public String a() {
        return this.f3287c;
    }

    public GoogleSignInAccount b(String str) {
        this.h = str;
        return this;
    }

    public String b() {
        return this.f3288d;
    }

    public String c() {
        return this.e;
    }

    public Account d() {
        if (this.e == null) {
            return null;
        }
        return new Account(this.e, "com.google");
    }

    public String e() {
        return this.f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.k().equals(k()) && googleSignInAccount.l().equals(l());
    }

    public String f() {
        return this.l;
    }

    public String g() {
        return this.m;
    }

    public Uri h() {
        return this.g;
    }

    public int hashCode() {
        return ((k().hashCode() + 527) * 31) + l().hashCode();
    }

    public String i() {
        return this.h;
    }

    public long j() {
        return this.i;
    }

    public String k() {
        return this.j;
    }

    public Set<Scope> l() {
        HashSet hashSet = new HashSet(this.k);
        hashSet.addAll(this.n);
        return hashSet;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = b.a(parcel);
        b.a(parcel, 1, this.f3286b);
        b.a(parcel, 2, a(), false);
        b.a(parcel, 3, b(), false);
        b.a(parcel, 4, c(), false);
        b.a(parcel, 5, e(), false);
        b.a(parcel, 6, (Parcelable) h(), i, false);
        b.a(parcel, 7, i(), false);
        b.a(parcel, 8, j());
        b.a(parcel, 9, k(), false);
        b.c(parcel, 10, this.k, false);
        b.a(parcel, 11, f(), false);
        b.a(parcel, 12, g(), false);
        b.a(parcel, iA);
    }
}

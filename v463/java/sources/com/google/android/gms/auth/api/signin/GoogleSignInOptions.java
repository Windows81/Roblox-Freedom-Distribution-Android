package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements a.d.e, ReflectedParcelable {
    private final int h;
    private final ArrayList<Scope> i;
    private Account j;
    private boolean k;
    private final boolean l;
    private final boolean m;
    private String n;
    private String o;
    private ArrayList<GoogleSignInOptionsExtensionParcelable> p;
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Scope f3377a = new Scope("profile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Scope f3378b = new Scope("email");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Scope f3379c = new Scope("openid");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Scope f3380d = new Scope("https://www.googleapis.com/auth/games_lite");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Scope f3381e = new Scope("https://www.googleapis.com/auth/games");
    public static final GoogleSignInOptions f = new a().a().b().c();
    public static final GoogleSignInOptions g = new a().a(f3380d, new Scope[0]).c();
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new c();
    private static Comparator<Scope> r = new e();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Set<Scope> f3382a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3383b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3384c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3385d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f3386e;
        private Account f;
        private String g;
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> h;

        public a() {
            this.f3382a = new HashSet();
            this.h = new HashMap();
        }

        public a(GoogleSignInOptions googleSignInOptions) {
            this.f3382a = new HashSet();
            this.h = new HashMap();
            aa.a(googleSignInOptions);
            this.f3382a = new HashSet(googleSignInOptions.i);
            this.f3383b = googleSignInOptions.l;
            this.f3384c = googleSignInOptions.m;
            this.f3385d = googleSignInOptions.k;
            this.f3386e = googleSignInOptions.n;
            this.f = googleSignInOptions.j;
            this.g = googleSignInOptions.o;
            this.h = GoogleSignInOptions.b(googleSignInOptions.p);
        }

        public final a a() {
            this.f3382a.add(GoogleSignInOptions.f3379c);
            return this;
        }

        public final a a(Scope scope, Scope... scopeArr) {
            this.f3382a.add(scope);
            this.f3382a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public final a b() {
            this.f3382a.add(GoogleSignInOptions.f3377a);
            return this;
        }

        public final GoogleSignInOptions c() {
            if (this.f3382a.contains(GoogleSignInOptions.f3381e) && this.f3382a.contains(GoogleSignInOptions.f3380d)) {
                this.f3382a.remove(GoogleSignInOptions.f3380d);
            }
            if (this.f3385d && (this.f == null || !this.f3382a.isEmpty())) {
                a();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f3382a), this.f, this.f3385d, this.f3383b, this.f3384c, this.f3386e, this.g, this.h, null);
        }
    }

    GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2) {
        this(i, arrayList, account, z, z2, z3, str, str2, b(arrayList2));
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map) {
        this.h = i;
        this.i = arrayList;
        this.j = account;
        this.k = z;
        this.l = z2;
        this.m = z3;
        this.n = str;
        this.o = str2;
        this.p = new ArrayList<>(map.values());
        this.q = map;
    }

    /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, e eVar) {
        this(3, (ArrayList<Scope>) arrayList, account, z, z2, z3, str, str2, (Map<Integer, GoogleSignInOptionsExtensionParcelable>) map);
    }

    public static GoogleSignInOptions a(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String strOptString = jSONObject.optString("accountName", null);
        return new GoogleSignInOptions(3, (ArrayList<Scope>) new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> b(List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap map = new HashMap();
        if (list == null) {
            return map;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.a()), googleSignInOptionsExtensionParcelable);
        }
        return map;
    }

    private final JSONObject j() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.i, r);
            ArrayList<Scope> arrayList = this.i;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Scope scope = arrayList.get(i);
                i++;
                jSONArray.put(scope.a());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.j != null) {
                jSONObject.put("accountName", this.j.name);
            }
            jSONObject.put("idTokenRequested", this.k);
            jSONObject.put("forceCodeForRefreshToken", this.m);
            jSONObject.put("serverAuthRequested", this.l);
            if (!TextUtils.isEmpty(this.n)) {
                jSONObject.put("serverClientId", this.n);
            }
            if (!TextUtils.isEmpty(this.o)) {
                jSONObject.put("hostedDomain", this.o);
            }
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public ArrayList<Scope> a() {
        return new ArrayList<>(this.i);
    }

    public Account b() {
        return this.j;
    }

    public boolean c() {
        return this.k;
    }

    public boolean d() {
        return this.l;
    }

    public boolean e() {
        return this.m;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0054 A[Catch: ClassCastException -> 0x0085, TryCatch #0 {ClassCastException -> 0x0085, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004c, B:24:0x0054, B:29:0x006b, B:31:0x0073, B:33:0x007b, B:27:0x005f, B:20:0x0040), top: B:39:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f A[Catch: ClassCastException -> 0x0085, TryCatch #0 {ClassCastException -> 0x0085, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004c, B:24:0x0054, B:29:0x006b, B:31:0x0073, B:33:0x007b, B:27:0x005f, B:20:0x0040), top: B:39:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0083 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L85
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r3.p     // Catch: java.lang.ClassCastException -> L85
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L85
            if (r1 > 0) goto L85
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r4.p     // Catch: java.lang.ClassCastException -> L85
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L85
            if (r1 <= 0) goto L18
            goto L85
        L18:
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.i     // Catch: java.lang.ClassCastException -> L85
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L85
            java.util.ArrayList r2 = r4.a()     // Catch: java.lang.ClassCastException -> L85
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L85
            if (r1 != r2) goto L85
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.i     // Catch: java.lang.ClassCastException -> L85
            java.util.ArrayList r2 = r4.a()     // Catch: java.lang.ClassCastException -> L85
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L85
            if (r1 != 0) goto L35
            goto L85
        L35:
            android.accounts.Account r1 = r3.j     // Catch: java.lang.ClassCastException -> L85
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r4.b()     // Catch: java.lang.ClassCastException -> L85
            if (r1 != 0) goto L85
            goto L4c
        L40:
            android.accounts.Account r1 = r3.j     // Catch: java.lang.ClassCastException -> L85
            android.accounts.Account r2 = r4.b()     // Catch: java.lang.ClassCastException -> L85
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L85
            if (r1 == 0) goto L85
        L4c:
            java.lang.String r1 = r3.n     // Catch: java.lang.ClassCastException -> L85
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L85
            if (r1 == 0) goto L5f
            java.lang.String r1 = r4.f()     // Catch: java.lang.ClassCastException -> L85
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L85
            if (r1 == 0) goto L85
            goto L6b
        L5f:
            java.lang.String r1 = r3.n     // Catch: java.lang.ClassCastException -> L85
            java.lang.String r2 = r4.f()     // Catch: java.lang.ClassCastException -> L85
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L85
            if (r1 == 0) goto L85
        L6b:
            boolean r1 = r3.m     // Catch: java.lang.ClassCastException -> L85
            boolean r2 = r4.e()     // Catch: java.lang.ClassCastException -> L85
            if (r1 != r2) goto L85
            boolean r1 = r3.k     // Catch: java.lang.ClassCastException -> L85
            boolean r2 = r4.c()     // Catch: java.lang.ClassCastException -> L85
            if (r1 != r2) goto L85
            boolean r1 = r3.l     // Catch: java.lang.ClassCastException -> L85
            boolean r4 = r4.d()     // Catch: java.lang.ClassCastException -> L85
            if (r1 != r4) goto L85
            r4 = 1
            return r4
        L85:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public String f() {
        return this.n;
    }

    public String g() {
        return this.o;
    }

    public ArrayList<GoogleSignInOptionsExtensionParcelable> h() {
        return this.p;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.i;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Scope scope = arrayList2.get(i);
            i++;
            arrayList.add(scope.a());
        }
        Collections.sort(arrayList);
        return new com.google.android.gms.auth.api.signin.internal.b().a(arrayList).a(this.j).a(this.n).a(this.m).a(this.k).a(this.l).a();
    }

    public String i() {
        return j().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.h);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, a(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) b(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, c());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, d());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, e());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, f(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, g(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 9, h(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}

package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class e extends com.google.android.gms.analytics.q<e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5982d;
    private String e;
    private boolean f;
    private boolean g;

    public e() {
        this(false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private e(boolean z) {
        UUID uuidRandomUUID = UUID.randomUUID();
        int leastSignificantBits = (int) (uuidRandomUUID.getLeastSignificantBits() & 2147483647L);
        if (leastSignificantBits == 0 && (leastSignificantBits = (int) (uuidRandomUUID.getMostSignificantBits() & 2147483647L)) == 0) {
            Log.e("GAv4", "UUID.randomUUID() returned 0.");
            leastSignificantBits = Integer.MAX_VALUE;
        }
        this(false, leastSignificantBits);
    }

    private e(boolean z, int i) {
        com.google.android.gms.common.internal.w.a(i);
        this.f5980b = i;
        this.g = false;
    }

    public final String a() {
        return this.f5979a;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        e eVar = (e) qVar;
        if (!TextUtils.isEmpty(this.f5979a)) {
            eVar.f5979a = this.f5979a;
        }
        if (this.f5980b != 0) {
            eVar.f5980b = this.f5980b;
        }
        if (this.f5981c != 0) {
            eVar.f5981c = this.f5981c;
        }
        if (!TextUtils.isEmpty(this.f5982d)) {
            eVar.f5982d = this.f5982d;
        }
        if (!TextUtils.isEmpty(this.e)) {
            String str = this.e;
            if (TextUtils.isEmpty(str)) {
                eVar.e = null;
            } else {
                eVar.e = str;
            }
        }
        if (this.f) {
            eVar.f = this.f;
        }
        if (this.g) {
            eVar.g = this.g;
        }
    }

    public final int b() {
        return this.f5980b;
    }

    public final String c() {
        return this.e;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("screenName", this.f5979a);
        map.put("interstitial", Boolean.valueOf(this.f));
        map.put("automatic", Boolean.valueOf(this.g));
        map.put("screenId", Integer.valueOf(this.f5980b));
        map.put("referrerScreenId", Integer.valueOf(this.f5981c));
        map.put("referrerScreenName", this.f5982d);
        map.put("referrerUri", this.e);
        return a((Object) map);
    }
}

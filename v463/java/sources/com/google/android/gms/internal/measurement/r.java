package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class r extends com.google.android.gms.analytics.q<r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4685c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f4687e;
    private boolean f;
    private boolean g;

    public r() {
        this(false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private r(boolean z) {
        UUID uuidRandomUUID = UUID.randomUUID();
        int leastSignificantBits = (int) (uuidRandomUUID.getLeastSignificantBits() & 2147483647L);
        if (leastSignificantBits == 0 && (leastSignificantBits = (int) (uuidRandomUUID.getMostSignificantBits() & 2147483647L)) == 0) {
            Log.e("GAv4", "UUID.randomUUID() returned 0.");
            leastSignificantBits = Integer.MAX_VALUE;
        }
        this(false, leastSignificantBits);
    }

    private r(boolean z, int i) {
        com.google.android.gms.common.internal.aa.a(i);
        this.f4684b = i;
        this.g = false;
    }

    public final String a() {
        return this.f4683a;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        r rVar = (r) qVar;
        if (!TextUtils.isEmpty(this.f4683a)) {
            rVar.f4683a = this.f4683a;
        }
        int i = this.f4684b;
        if (i != 0) {
            rVar.f4684b = i;
        }
        int i2 = this.f4685c;
        if (i2 != 0) {
            rVar.f4685c = i2;
        }
        if (!TextUtils.isEmpty(this.f4686d)) {
            rVar.f4686d = this.f4686d;
        }
        if (!TextUtils.isEmpty(this.f4687e)) {
            String str = this.f4687e;
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
            rVar.f4687e = str;
        }
        boolean z = this.f;
        if (z) {
            rVar.f = z;
        }
        boolean z2 = this.g;
        if (z2) {
            rVar.g = z2;
        }
    }

    public final int b() {
        return this.f4684b;
    }

    public final String c() {
        return this.f4687e;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("screenName", this.f4683a);
        map.put("interstitial", Boolean.valueOf(this.f));
        map.put("automatic", Boolean.valueOf(this.g));
        map.put("screenId", Integer.valueOf(this.f4684b));
        map.put("referrerScreenId", Integer.valueOf(this.f4685c));
        map.put("referrerScreenName", this.f4686d);
        map.put("referrerUri", this.f4687e);
        return a((Object) map);
    }
}

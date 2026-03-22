package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class asb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<arz> f4425b = new LinkedList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, String> f4426c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f4427d = new Object();
    private String e;
    private asb f;

    public asb(boolean z, String str, String str2) {
        this.f4424a = z;
        this.f4426c.put("action", str);
        this.f4426c.put("ad_format", str2);
    }

    public final arz a() {
        return a(com.google.android.gms.ads.internal.aw.l().b());
    }

    public final arz a(long j) {
        if (this.f4424a) {
            return new arz(j, null, null);
        }
        return null;
    }

    public final void a(asb asbVar) {
        synchronized (this.f4427d) {
            this.f = asbVar;
        }
    }

    public final void a(String str) {
        if (this.f4424a) {
            synchronized (this.f4427d) {
                this.e = str;
            }
        }
    }

    public final void a(String str, String str2) {
        arr arrVarB;
        if (!this.f4424a || TextUtils.isEmpty(str2) || (arrVarB = com.google.android.gms.ads.internal.aw.i().b()) == null) {
            return;
        }
        synchronized (this.f4427d) {
            arv arvVarA = arrVarB.a(str);
            Map<String, String> map = this.f4426c;
            map.put(str, arvVarA.a(map.get(str), str2));
        }
    }

    public final boolean a(arz arzVar, long j, String... strArr) {
        synchronized (this.f4427d) {
            for (String str : strArr) {
                this.f4425b.add(new arz(j, str, arzVar));
            }
        }
        return true;
    }

    public final boolean a(arz arzVar, String... strArr) {
        if (!this.f4424a || arzVar == null) {
            return false;
        }
        return a(arzVar, com.google.android.gms.ads.internal.aw.l().b(), strArr);
    }

    public final String b() {
        String string;
        StringBuilder sb = new StringBuilder();
        synchronized (this.f4427d) {
            for (arz arzVar : this.f4425b) {
                long jA = arzVar.a();
                String strB = arzVar.b();
                arz arzVarC = arzVar.c();
                if (arzVarC != null && jA > 0) {
                    sb.append(strB).append('.').append(jA - arzVarC.a()).append(',');
                }
            }
            this.f4425b.clear();
            if (!TextUtils.isEmpty(this.e)) {
                sb.append(this.e);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            string = sb.toString();
        }
        return string;
    }

    final Map<String, String> c() {
        Map<String, String> mapA;
        synchronized (this.f4427d) {
            arr arrVarB = com.google.android.gms.ads.internal.aw.i().b();
            mapA = (arrVarB == null || this.f == null) ? this.f4426c : arrVarB.a(this.f4426c, this.f.c());
        }
        return mapA;
    }

    public final arz d() {
        synchronized (this.f4427d) {
        }
        return null;
    }
}

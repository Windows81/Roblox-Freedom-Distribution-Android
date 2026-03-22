package com.roblox.client.n;

import com.roblox.client.ae.k;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static d f6605c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, Long> f6607b = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6606a = 180000;

    private d() {
    }

    public static d a() {
        d dVar = f6605c;
        if (dVar != null) {
            return dVar;
        }
        synchronized (d.class) {
            if (f6605c == null) {
                f6605c = new d();
            }
        }
        return f6605c;
    }

    public void a(String str) {
        this.f6607b.put(str, Long.MAX_VALUE);
    }

    public boolean b(String str) {
        k.b("WebFragmentRefreshHelper", "Checking is refresh is needed. url=" + str);
        if (this.f6607b.containsKey(str)) {
            long jLongValue = this.f6607b.get(str).longValue();
            this.f6607b.put(str, Long.valueOf(System.currentTimeMillis()));
            z = System.currentTimeMillis() - jLongValue >= this.f6606a;
            k.b("WebFragmentRefreshHelper", "Needs refresh=" + z);
        }
        return z;
    }

    public void a(long j) {
        this.f6606a = j;
    }
}

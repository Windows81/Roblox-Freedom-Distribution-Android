package com.roblox.client.f;

import com.roblox.client.util.g;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static f f6934c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, Long> f6936b = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6935a = 180000;

    private f() {
    }

    public static f a() {
        if (f6934c != null) {
            return f6934c;
        }
        synchronized (f.class) {
            if (f6934c == null) {
                f6934c = new f();
            }
        }
        return f6934c;
    }

    public void a(String str) {
        this.f6936b.put(str, Long.MAX_VALUE);
    }

    public boolean b(String str) {
        g.b("WebFragmentRefreshHelper", "Checking is refresh is needed. url=" + str);
        if (!this.f6936b.containsKey(str)) {
            return false;
        }
        long jLongValue = this.f6936b.get(str).longValue();
        this.f6936b.put(str, Long.valueOf(System.currentTimeMillis()));
        boolean z = System.currentTimeMillis() - jLongValue >= this.f6935a;
        g.b("WebFragmentRefreshHelper", "Needs refresh=" + z);
        return z;
    }

    public void a(long j) {
        this.f6935a = j;
    }
}

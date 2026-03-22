package com.roblox.client.s;

import android.content.Context;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.ae.k;
import com.roblox.client.ae.v;
import com.roblox.client.landing.ActivityStartMVP;
import com.roblox.client.startup.ActivitySplash;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f6974a = ActivityNativeMain.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f6975b = ActivitySplash.class.getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f6976c = ActivityStartMVP.class.getSimpleName();
    private static a k;
    private final Context f;
    private final v.a h;
    private InterfaceC0169a i;
    private long j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6977d = "ActivityTracker";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f6978e = new c(60000, 1000, 120000, 1000);
    private Map<String, b> g = new HashMap();

    /* JADX INFO: renamed from: com.roblox.client.s.a$a, reason: collision with other inner class name */
    interface InterfaceC0169a {
        void a(Context context, String str);
    }

    public static a a(Context context) {
        if (k == null) {
            synchronized (a.class) {
                if (k == null) {
                    k = new a(context.getApplicationContext(), new v.b());
                }
            }
        }
        return k;
    }

    a(Context context, v.a aVar) {
        k.b("ActivityTracker", "[Constructor]: limit-params = " + this.f6978e);
        this.f = context;
        this.h = aVar;
    }

    void a(InterfaceC0169a interfaceC0169a) {
        this.i = interfaceC0169a;
    }

    public void a() {
        c cVarA = c.a(com.roblox.client.b.T());
        if (cVarA != null) {
            k.c("ActivityTracker", "onAppSettingsFetched: Got new params: " + cVarA);
            this.f6978e = cVarA;
            this.g.clear();
        }
    }

    public void a(String str) {
        k.c("ActivityTracker", "onActivityCreated: name = " + str);
        long jA = this.h.a();
        b bVar = this.g.get(str);
        if (bVar == null) {
            this.g.put(str, a(str, jA));
            return;
        }
        if (jA - bVar.c() > bVar.d()) {
            bVar.a(1, jA);
            return;
        }
        if (bVar.b() >= bVar.e()) {
            bVar.a(0, jA);
            InterfaceC0169a interfaceC0169a = this.i;
            if (interfaceC0169a != null) {
                interfaceC0169a.a(this.f, str);
                return;
            }
            return;
        }
        bVar.a();
    }

    public void b(String str) {
        k.c("ActivityTracker", "onActivityStarted: name = " + str);
        long jA = this.h.a();
        long j = this.j;
        long j2 = jA - j;
        if (j == 0 || j2 >= 3600000) {
            this.j = jA;
            f.b().e();
        }
    }

    private b a(String str, long j) {
        if (f6974a.equals(str)) {
            return new b(str, j, this.f6978e.f6986c, this.f6978e.f6987d);
        }
        return new b(str, j, this.f6978e.f6984a, this.f6978e.f6985b);
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f6984a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f6985b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f6986c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f6987d;

        c() {
        }

        c(long j, int i, long j2, int i2) {
            this.f6984a = j;
            this.f6985b = i;
            this.f6986c = j2;
            this.f6987d = i2;
        }

        public String toString() {
            return (this.f6984a / 1000) + ";" + this.f6985b + ";" + (this.f6986c / 1000) + ";" + this.f6987d;
        }

        static c a(String str) {
            if (str == null) {
                return null;
            }
            String[] strArrSplit = str.split(";");
            if (strArrSplit.length < 4) {
                return null;
            }
            c cVar = new c();
            try {
                cVar.f6984a = Long.valueOf(strArrSplit[0].trim()).longValue() * 1000;
                cVar.f6985b = Integer.valueOf(strArrSplit[1].trim()).intValue();
                cVar.f6986c = Long.valueOf(strArrSplit[2].trim()).longValue() * 1000;
                cVar.f6987d = Integer.valueOf(strArrSplit[3].trim()).intValue();
                return cVar;
            } catch (NumberFormatException e2) {
                k.d("LimitParams", "parseFromString: Failed to parse limit-params: " + e2);
                return null;
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f6979a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f6980b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f6981c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f6982d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f6983e;

        b(String str, long j, long j2, int i) {
            this.f6979a = str;
            this.f6981c = j;
            this.f6982d = j2;
            this.f6983e = i;
        }

        void a() {
            this.f6980b++;
        }

        int b() {
            return this.f6980b;
        }

        long c() {
            return this.f6981c;
        }

        long d() {
            return this.f6982d;
        }

        int e() {
            return this.f6983e;
        }

        void a(int i, long j) {
            this.f6980b = i;
            this.f6981c = j;
        }
    }
}

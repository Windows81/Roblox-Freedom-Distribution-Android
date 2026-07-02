package com.roblox.client.i;

import android.content.Context;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.chat.ConversationActivity;
import com.roblox.client.landing.ActivityStartMVP;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.util.p;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f7136a = ActivityNativeMain.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f7137b = ConversationActivity.class.getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f7138c = ActivitySplash.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f7139d = ActivityStartMVP.class.getSimpleName();
    private static a l;
    private final Context g;
    private final p.a i;
    private InterfaceC0108a j;
    private long k;
    private final String e = getClass().getSimpleName();
    private c f = new c(60000, 1000, 120000, 1000);
    private Map<String, b> h = new HashMap();

    /* JADX INFO: renamed from: com.roblox.client.i.a$a, reason: collision with other inner class name */
    interface InterfaceC0108a {
        void a(Context context, String str);
    }

    public static a a(Context context) {
        if (l == null) {
            synchronized (a.class) {
                if (l == null) {
                    l = new a(context.getApplicationContext(), new p.b());
                }
            }
        }
        return l;
    }

    a(Context context, p.a aVar) {
        com.roblox.client.util.g.b(this.e, "[Constructor]: limit-params = " + this.f);
        this.g = context;
        this.i = aVar;
    }

    void a(InterfaceC0108a interfaceC0108a) {
        this.j = interfaceC0108a;
    }

    public void a() {
        c cVarA = c.a(com.roblox.client.b.au());
        if (cVarA != null) {
            com.roblox.client.util.g.c(this.e, "onAppSettingsFetched: Got new params: " + cVarA);
            this.f = cVarA;
            this.h.clear();
        }
    }

    public void a(String str) {
        com.roblox.client.util.g.c(this.e, "onActivityCreated: name = " + str);
        long jA = this.i.a();
        b bVar = this.h.get(str);
        if (bVar == null) {
            this.h.put(str, a(str, jA));
        } else {
            if (jA - bVar.c() > bVar.d()) {
                bVar.a(1, jA);
                return;
            }
            if (bVar.b() >= bVar.e()) {
                bVar.a(0, jA);
                if (this.j != null) {
                    this.j.a(this.g, str);
                    return;
                }
                return;
            }
            bVar.a();
        }
    }

    public void b(String str) {
        com.roblox.client.util.g.c(this.e, "onActivityStarted: name = " + str);
        long jA = this.i.a();
        long j = jA - this.k;
        if (this.k == 0 || j >= 3600000) {
            this.k = jA;
            f.a().c();
        }
    }

    private b a(String str, long j) {
        return f7136a.equals(str) ? new b(str, j, this.f.f7146c, this.f.f7147d) : new b(str, j, this.f.f7144a, this.f.f7145b);
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f7144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f7145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f7146c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f7147d;

        c() {
        }

        c(long j, int i, long j2, int i2) {
            this.f7144a = j;
            this.f7145b = i;
            this.f7146c = j2;
            this.f7147d = i2;
        }

        public String toString() {
            return (this.f7144a / 1000) + ";" + this.f7145b + ";" + (this.f7146c / 1000) + ";" + this.f7147d;
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
                cVar.f7144a = Long.valueOf(strArrSplit[0].trim()).longValue() * 1000;
                cVar.f7145b = Integer.valueOf(strArrSplit[1].trim()).intValue();
                cVar.f7146c = Long.valueOf(strArrSplit[2].trim()).longValue() * 1000;
                cVar.f7147d = Integer.valueOf(strArrSplit[3].trim()).intValue();
                return cVar;
            } catch (NumberFormatException e) {
                com.roblox.client.util.g.d("LimitParams", "parseFromString: Failed to parse limit-params: " + e);
                return null;
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f7140a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f7141b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f7142c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f7143d;
        int e;

        b(String str, long j, long j2, int i) {
            this.f7140a = str;
            this.f7142c = j;
            this.f7143d = j2;
            this.e = i;
        }

        void a() {
            this.f7141b++;
        }

        int b() {
            return this.f7141b;
        }

        long c() {
            return this.f7142c;
        }

        long d() {
            return this.f7143d;
        }

        int e() {
            return this.e;
        }

        void a(int i, long j) {
            this.f7141b = i;
            this.f7142c = j;
        }
    }
}

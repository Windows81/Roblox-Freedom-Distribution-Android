package com.roblox.client.pushnotification;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static l f6845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bundle f6846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f6847c = new a() { // from class: com.roblox.client.pushnotification.l.1
        @Override // com.roblox.client.pushnotification.l.a
        public void a(com.roblox.client.pushnotification.b.n nVar, Context context) {
            if (context == null || nVar.a() == null || l.this.f(context) == null) {
                return;
            }
            l.this.a(context, nVar.a(), new q(), l.this.f(context).c());
        }
    };

    public interface a {
        void a(com.roblox.client.pushnotification.b.n nVar, Context context);
    }

    public static l a() {
        if (f6845a == null) {
            synchronized (l.class) {
                if (f6845a == null) {
                    f6845a = new l();
                }
            }
        }
        return f6845a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public m f(Context context) {
        return n.a().a(context);
    }

    public void a(Context context) {
        a(context, false);
    }

    public void a(Context context, boolean z) {
        if (context != null) {
            a(context, z, f(context));
        }
    }

    void a(Context context, boolean z, m mVar) {
        if (mVar != null) {
            mVar.a(context, z);
        }
    }

    public String b(Context context) {
        m mVarF = f(context);
        if (mVarF != null) {
            return mVarF.b();
        }
        return null;
    }

    public String c(Context context) {
        m mVarF = f(context);
        if (mVarF != null) {
            return mVarF.c();
        }
        return null;
    }

    public com.roblox.client.pushnotification.b.k d(Context context) {
        m mVarF = f(context);
        if (mVarF != null) {
            return mVarF.a();
        }
        return com.roblox.client.pushnotification.b.k.NONE;
    }

    public void e(Context context) {
        q qVar = new q();
        boolean zA = androidx.core.app.l.a(context).a();
        com.roblox.client.ae.k.b("rbx.push", "AndroidNotifState: " + zA);
        if (qVar.c(context, "AndroidNotifStatePrefKey") && zA == qVar.b(context, "AndroidNotifStatePrefKey")) {
            return;
        }
        com.roblox.client.ae.k.b("rbx.push", "Different value. Reporting new state: " + zA);
        qVar.a(context, "AndroidNotifStatePrefKey", zA);
        com.roblox.client.p.a("osSettings", zA);
    }

    public void a(Bundle bundle) {
        this.f6846b = bundle;
    }

    public boolean b() {
        return this.f6846b != null;
    }

    public Bundle c() {
        Bundle bundle = this.f6846b;
        if (bundle != null) {
            this.f6846b = null;
        }
        return bundle;
    }

    public String d() {
        Bundle bundle = this.f6846b;
        return bundle == null ? "" : bundle.getString("EXTRA_NOTIFICATION_TYPE");
    }

    void a(Context context, String str, String str2, boolean z, com.roblox.client.pushnotification.a.a aVar, a aVar2) {
        if (aVar == null || str == null || aVar2 == null) {
            return;
        }
        aVar.a(context, str, str2, z, aVar2);
    }

    void a(Context context, String str, q qVar, String str2) {
        if (str2 == null || qVar == null) {
            return;
        }
        com.roblox.client.ae.k.c("rbx.push", str2 + " " + str);
        qVar.a(context, str2, str);
    }

    private String a(String str, Context context, q qVar, String str2) {
        if (qVar == null || str2 == null) {
            return null;
        }
        String strA = qVar.a(context, str2);
        if (strA == null || !strA.equals(str)) {
            return strA;
        }
        return null;
    }

    public void a(com.roblox.client.pushnotification.b.l lVar) {
        if (lVar.c() == null || lVar.b() == null) {
            return;
        }
        com.roblox.client.ae.k.c("rbx.push", lVar.b());
        q qVar = new q();
        Context contextC = lVar.c();
        m mVarF = f(contextC);
        if (mVarF != null) {
            String strB = mVarF.b();
            String strB2 = lVar.b();
            a(contextC, strB2, b(contextC, strB2, qVar, strB), lVar.a(), new com.roblox.client.pushnotification.a.a(), this.f6847c);
        }
    }

    String b(Context context, String str, q qVar, String str2) {
        String strA = a(str, context, qVar, str2);
        a(context, str, qVar, str2);
        return strA;
    }
}

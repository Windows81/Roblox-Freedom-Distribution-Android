package com.roblox.client.pushnotification;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static l f7691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f7692b = new a() { // from class: com.roblox.client.pushnotification.l.1
        @Override // com.roblox.client.pushnotification.l.a
        public void a(com.roblox.client.pushnotification.b.n nVar, Context context) {
            if (context != null && nVar.a() != null && l.this.e(context) != null) {
                l.this.a(context, nVar.a(), new q(), l.this.e(context).c());
            }
        }
    };

    public interface a {
        void a(com.roblox.client.pushnotification.b.n nVar, Context context);
    }

    public static l a() {
        if (f7691a == null) {
            synchronized (l.class) {
                if (f7691a == null) {
                    f7691a = new l();
                }
            }
        }
        return f7691a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public m e(Context context) {
        return n.a().a(context);
    }

    public void a(Context context) {
        a(context, a(context, new q()));
    }

    public void a(Context context, boolean z) {
        if (context != null) {
            a(context, z, e(context));
        }
    }

    void a(Context context, boolean z, m mVar) {
        if (mVar != null) {
            mVar.a(context, z);
        }
    }

    private boolean a(Context context, q qVar) {
        if (qVar != null) {
            return qVar.b(context, "AUTHORIZE_PUSH_NOTIFICATIONS_FOR_USER");
        }
        return false;
    }

    public String b(Context context) {
        m mVarE = e(context);
        if (mVarE != null) {
            return mVarE.b();
        }
        return null;
    }

    public String c(Context context) {
        m mVarE = e(context);
        if (mVarE != null) {
            return mVarE.c();
        }
        return null;
    }

    public com.roblox.client.pushnotification.b.k d(Context context) {
        m mVarE = e(context);
        return mVarE != null ? mVarE.a() : com.roblox.client.pushnotification.b.k.NONE;
    }

    void a(Context context, String str, String str2, boolean z, com.roblox.client.pushnotification.a.a aVar, a aVar2) {
        if (aVar != null && str != null && aVar2 != null) {
            aVar.a(context, str, str2, z, aVar2);
        }
    }

    void a(Context context, String str, q qVar, String str2) {
        if (str2 != null && qVar != null) {
            com.roblox.client.util.g.a("rbx.push", str2 + " " + str);
            qVar.a(context, str2, str);
        }
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
        if (lVar.c() != null && lVar.b() != null) {
            com.roblox.client.util.g.a("rbx.push", lVar.b());
            q qVar = new q();
            Context contextC = lVar.c();
            m mVarE = e(contextC);
            if (mVarE != null) {
                String strB = mVarE.b();
                String strB2 = lVar.b();
                a(contextC, strB2, b(contextC, strB2, qVar, strB), lVar.a(), new com.roblox.client.pushnotification.a.a(), this.f7692b);
            }
        }
    }

    String b(Context context, String str, q qVar, String str2) {
        String strA = a(str, context, qVar, str2);
        a(context, str, qVar, str2);
        return strA;
    }
}

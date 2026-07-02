package com.appsflyer;

/* JADX INFO: loaded from: classes.dex */
public class j extends com.google.android.gms.iid.b {
    @Override // com.google.android.gms.iid.b
    public void a() {
        String strA;
        super.a();
        String strA2 = g.a().a("gcmProjectNumber");
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            strA = com.google.android.gms.iid.a.c(getApplicationContext()).a(strA2, "GCM", null);
        } catch (Throwable th) {
            c.a("Error registering for uninstall tracking", th);
            strA = null;
        }
        if (strA != null) {
            c.c("GCM Refreshed Token = " + strA);
            n nVarA = n.a(g.a().a("afUninstallToken"));
            n nVar = new n(jCurrentTimeMillis, strA);
            if (nVarA != null && nVarA.a(nVar)) {
                m.a(getApplicationContext(), nVar);
            }
        }
    }
}

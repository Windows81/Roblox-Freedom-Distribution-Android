package com.c.a;

import android.graphics.Bitmap;
import android.net.NetworkInfo;
import com.c.a.j;
import com.c.a.t;
import com.c.a.y;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class r extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f3171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aa f3172b;

    @Override // com.c.a.y
    int a() {
        return 2;
    }

    @Override // com.c.a.y
    boolean b() {
        return true;
    }

    public r(j jVar, aa aaVar) {
        this.f3171a = jVar;
        this.f3172b = aaVar;
    }

    @Override // com.c.a.y
    public boolean a(w wVar) {
        String scheme = wVar.f3207d.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // com.c.a.y
    public y.a a(w wVar, int i) throws IOException {
        j.a aVarA = this.f3171a.a(wVar.f3207d, wVar.f3206c);
        if (aVarA == null) {
            return null;
        }
        t.d dVar = aVarA.f3143c ? t.d.DISK : t.d.NETWORK;
        Bitmap bitmapB = aVarA.b();
        if (bitmapB != null) {
            return new y.a(bitmapB, dVar);
        }
        InputStream inputStreamA = aVarA.a();
        if (inputStreamA == null) {
            return null;
        }
        if (dVar == t.d.DISK && aVarA.c() == 0) {
            ae.a(inputStreamA);
            throw new a("Received response with 0 content-length header.");
        }
        if (dVar == t.d.NETWORK && aVarA.c() > 0) {
            this.f3172b.a(aVarA.c());
        }
        return new y.a(inputStreamA, dVar);
    }

    @Override // com.c.a.y
    boolean a(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }
}

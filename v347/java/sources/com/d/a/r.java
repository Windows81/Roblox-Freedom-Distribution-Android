package com.d.a;

import android.graphics.Bitmap;
import android.net.NetworkInfo;
import com.d.a.j;
import com.d.a.t;
import com.d.a.y;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class r extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f2512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aa f2513b;

    public r(j jVar, aa aaVar) {
        this.f2512a = jVar;
        this.f2513b = aaVar;
    }

    @Override // com.d.a.y
    public boolean a(w wVar) {
        String scheme = wVar.f2544d.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // com.d.a.y
    public y.a a(w wVar, int i) throws IOException {
        j.a aVarA = this.f2512a.a(wVar.f2544d, wVar.f2543c);
        if (aVarA == null) {
            return null;
        }
        t.d dVar = aVarA.f2488c ? t.d.DISK : t.d.NETWORK;
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
            this.f2513b.a(aVarA.c());
        }
        return new y.a(inputStreamA, dVar);
    }

    @Override // com.d.a.y
    int a() {
        return 2;
    }

    @Override // com.d.a.y
    boolean a(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // com.d.a.y
    boolean b() {
        return true;
    }

    static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }
}

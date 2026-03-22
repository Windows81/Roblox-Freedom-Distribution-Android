package e.a.a;

import c.ad;
import com.google.gson.f;
import com.google.gson.v;
import e.e;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class c<T> implements e<ad, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f7825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v<T> f7826b;

    c(f fVar, v<T> vVar) {
        this.f7825a = fVar;
        this.f7826b = vVar;
    }

    @Override // e.e
    public T a(ad adVar) throws IOException {
        try {
            return this.f7826b.b(this.f7825a.a(adVar.f()));
        } finally {
            adVar.close();
        }
    }
}

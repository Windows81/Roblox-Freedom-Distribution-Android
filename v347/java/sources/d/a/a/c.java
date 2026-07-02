package d.a.a;

import b.ac;
import com.google.gson.v;
import d.e;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class c<T> implements e<ac, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.e f8079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v<T> f8080b;

    c(com.google.gson.e eVar, v<T> vVar) {
        this.f8079a = eVar;
        this.f8080b = vVar;
    }

    @Override // d.e
    public T a(ac acVar) throws IOException {
        try {
            return this.f8080b.b(this.f8079a.a(acVar.f()));
        } finally {
            acVar.close();
        }
    }
}

package e.a.a;

import c.ab;
import c.v;
import com.google.gson.f;
import e.e;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class b<T> implements e<T, ab> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final v f7821a = v.a("application/json; charset=UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Charset f7822b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f7823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.gson.v<T> f7824d;

    b(f fVar, com.google.gson.v<T> vVar) {
        this.f7823c = fVar;
        this.f7824d = vVar;
    }

    @Override // e.e
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ab a(T t) throws IOException {
        d.c cVar = new d.c();
        com.google.gson.c.c cVarA = this.f7823c.a((Writer) new OutputStreamWriter(cVar.d(), f7822b));
        this.f7824d.a(cVarA, t);
        cVarA.close();
        return ab.a(f7821a, cVar.o());
    }
}

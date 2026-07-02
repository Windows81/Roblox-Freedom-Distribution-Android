package d.a.a;

import b.aa;
import b.u;
import com.google.gson.v;
import d.e;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
final class b<T> implements e<T, aa> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final u f8075a = u.a("application/json; charset=UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Charset f8076b = Charset.forName(Constants.UTF8_NAME);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.gson.e f8077c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v<T> f8078d;

    b(com.google.gson.e eVar, v<T> vVar) {
        this.f8077c = eVar;
        this.f8078d = vVar;
    }

    @Override // d.e
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public aa a(T t) throws IOException {
        c.c cVar = new c.c();
        com.google.gson.c.c cVarA = this.f8077c.a((Writer) new OutputStreamWriter(cVar.d(), f8076b));
        this.f8078d.a(cVarA, t);
        cVarA.close();
        return aa.a(f8075a, cVar.o());
    }
}

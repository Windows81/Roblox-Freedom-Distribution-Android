package a.a.g;

import a.a.g.b.f;
import a.a.g.b.g;
import a.a.g.b.h;
import android.content.Context;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    private static transient String o = a.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.google.gson.a.c(a = "uuid")
    public String f410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @com.google.gson.a.c(a = "timestamp")
    public long f411b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @com.google.gson.a.c(a = "langVersion")
    public String f413d;

    @com.google.gson.a.c(a = "agentVersion")
    public String f;

    @com.google.gson.a.c(a = "attributes")
    public Map<String, Object> g;

    @com.google.gson.a.c(a = "threads")
    Map<String, h> h;

    @com.google.gson.a.c(a = "mainThread")
    public String i;

    @com.google.gson.a.c(a = "classifiers")
    public String[] j;

    @com.google.gson.a.c(a = "annotations")
    public Map<String, Object> k;

    @com.google.gson.a.c(a = "sourceCode")
    public Map<String, a.a.g.b.e> l;
    public transient a.a.g.b.d m;
    public transient Context n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.google.gson.a.c(a = "lang")
    public final String f412c = "java";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @com.google.gson.a.c(a = "agent")
    public final String f414e = "backtrace-android";

    public a(Context context, a.a.g.b.d dVar, Map<String, Object> map) {
        if (dVar == null) {
            return;
        }
        this.n = context;
        this.m = dVar;
        b();
        c();
        b(map);
    }

    public List<String> a() {
        return a.a.b.c.a(this.n, this.m.h);
    }

    private void a(Map<String, Object> map) {
        a.a.f.a.a(o, "Setting annotations");
        Map<String, Object> map2 = this.g;
        this.k = a.a.g.b.b.a((map2 == null || !map2.containsKey("error.message")) ? null : this.g.get("error.message"), map);
    }

    private void b(Map<String, Object> map) {
        a.a.f.a.a(o, "Setting attributes");
        a.a.g.b.c cVar = new a.a.g.b.c(this.n, this.m, map);
        this.g = cVar.f434a;
        this.g.putAll(new a.a.b.b(this.n).a());
        a(cVar.a());
    }

    private void b() {
        a.a.f.a.a(o, "Setting report information");
        this.f410a = this.m.f437a.toString();
        this.f411b = this.m.f438b;
        this.j = this.m.f439c.booleanValue() ? new String[]{this.m.f440d} : null;
        this.f413d = System.getProperty("java.version");
        this.f = "3.0.2";
    }

    private void c() {
        a.a.f.a.a(o, "Setting threads information");
        g gVar = new g(this.m.i);
        this.i = gVar.a();
        this.h = gVar.f447a;
        f fVar = new f(this.m.i);
        this.l = fVar.f446a.isEmpty() ? null : fVar.f446a;
    }
}

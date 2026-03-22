package a.a.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements a.a.e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final transient String f467a = a.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient c f468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f469c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a.a.d.b f470d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a.a.d.d f471e = null;

    public a(a.a.b bVar) {
        if (bVar == null) {
            a.a.f.a.c(f467a, "BacktraceCredentials parameter passed to BacktraceApi constructor is null");
            throw new IllegalArgumentException("BacktraceCredentials cannot be null");
        }
        this.f469c = bVar.a().toString();
        this.f468b = new c(c.class.getSimpleName(), this.f469c);
    }

    @Override // a.a.e.a
    public void a(a.a.g.a aVar, a.a.d.c cVar) {
        this.f468b.a(new b(aVar, cVar, this.f470d, this.f471e));
    }
}

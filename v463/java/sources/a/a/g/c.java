package a.a.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a.a.g.c.a f453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a.a.g.b.d f454c;

    public c() {
        this.f453b = a.a.g.c.a.Ok;
    }

    public c(a.a.g.b.d dVar, String str, a.a.g.c.a aVar) {
        this.f453b = a.a.g.c.a.Ok;
        a(dVar);
        this.f452a = str;
        this.f453b = aVar;
    }

    public void a(a.a.g.b.d dVar) {
        this.f454c = dVar;
    }

    public static c a(a.a.g.b.d dVar, Exception exc) {
        return new c(dVar, exc.getMessage(), a.a.g.c.a.ServerError);
    }
}

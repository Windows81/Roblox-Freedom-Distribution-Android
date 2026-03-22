package a.a.a;

import a.a.c;
import a.a.e.b;
import a.a.g.b.d;
import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static transient String f344d = a.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, Object> f347c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a.a.e.a f348e;
    private a.a.d.a f = null;

    private void a(a.a.e.a aVar) {
        this.f348e = aVar;
        b bVar = this.f346b;
        if (bVar != null) {
            bVar.a(aVar);
        }
    }

    public a(Context context, a.a.b bVar, b bVar2, Map<String, Object> map) {
        this.f345a = context;
        this.f347c = map == null ? new HashMap<>() : map;
        this.f346b = bVar2 == null ? new c() : bVar2;
        a(new a.a.h.a(bVar));
        this.f346b.a();
    }

    public void a(a.a.d.a aVar) {
        this.f = aVar;
    }

    public void a(d dVar, a.a.d.c cVar) {
        a.a.g.a aVar = new a.a.g.a(this.f345a, dVar, this.f347c);
        a.a.g.a.a aVarA = this.f346b.a(dVar, this.f347c);
        a.a.d.a aVar2 = this.f;
        if (aVar2 != null) {
            aVar = aVar2.onEvent(aVar);
        }
        this.f348e.a(aVar, a(aVarA, cVar));
    }

    private a.a.d.c a(final a.a.g.a.a aVar, final a.a.d.c cVar) {
        return new a.a.d.c() { // from class: a.a.a.a.1
            @Override // a.a.d.c
            public void a(a.a.g.c cVar2) {
                a.a.d.c cVar3 = cVar;
                if (cVar3 != null) {
                    cVar3.a(cVar2);
                }
                a.a.g.a.a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.d();
                }
                if (cVar2 == null || cVar2.f453b != a.a.g.c.a.Ok) {
                    return;
                }
                a.this.f346b.a(aVar);
            }
        };
    }
}

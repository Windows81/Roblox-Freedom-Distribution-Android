package androidx.h;

import android.content.Context;
import androidx.h.e;
import androidx.i.a.c;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c.InterfaceC0050c f1796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e.d f1799d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<e.b> f1800e;
    public final boolean f;
    public final e.c g;
    public final Executor h;
    public final boolean i;
    private final Set<Integer> j;

    public a(Context context, String str, c.InterfaceC0050c interfaceC0050c, e.d dVar, List<e.b> list, boolean z, e.c cVar, Executor executor, boolean z2, Set<Integer> set) {
        this.f1796a = interfaceC0050c;
        this.f1797b = context;
        this.f1798c = str;
        this.f1799d = dVar;
        this.f1800e = list;
        this.f = z;
        this.g = cVar;
        this.h = executor;
        this.i = z2;
        this.j = set;
    }

    public boolean a(int i) {
        Set<Integer> set;
        return this.i && ((set = this.j) == null || !set.contains(Integer.valueOf(i)));
    }
}

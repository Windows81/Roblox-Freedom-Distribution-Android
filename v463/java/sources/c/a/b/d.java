package c.a.b;

import c.ae;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<ae> f2478a = new LinkedHashSet();

    public synchronized void a(ae aeVar) {
        this.f2478a.add(aeVar);
    }

    public synchronized void b(ae aeVar) {
        this.f2478a.remove(aeVar);
    }

    public synchronized boolean c(ae aeVar) {
        return this.f2478a.contains(aeVar);
    }
}

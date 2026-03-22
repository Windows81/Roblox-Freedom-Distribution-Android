package b.a.b;

import b.ad;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<ad> f1772a = new LinkedHashSet();

    public synchronized void a(ad adVar) {
        this.f1772a.add(adVar);
    }

    public synchronized void b(ad adVar) {
        this.f1772a.remove(adVar);
    }

    public synchronized boolean c(ad adVar) {
        return this.f1772a.contains(adVar);
    }
}

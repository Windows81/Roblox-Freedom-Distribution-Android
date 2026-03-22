package android.arch.lifecycle;

import android.arch.lifecycle.d;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<g> f144c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.arch.a.b.a<f, a> f142a = new android.arch.a.b.a<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f145d = 0;
    private boolean e = false;
    private boolean f = false;
    private ArrayList<d.b> g = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d.b f143b = d.b.INITIALIZED;

    public h(g gVar) {
        this.f144c = new WeakReference<>(gVar);
    }

    public void a(d.b bVar) {
        b(bVar);
    }

    public void a(d.a aVar) {
        b(b(aVar));
    }

    private void b(d.b bVar) {
        if (this.f143b != bVar) {
            this.f143b = bVar;
            if (this.e || this.f145d != 0) {
                this.f = true;
                return;
            }
            this.e = true;
            d();
            this.e = false;
        }
    }

    private boolean b() {
        if (this.f142a.a() == 0) {
            return true;
        }
        d.b bVar = this.f142a.d().getValue().f148a;
        d.b bVar2 = this.f142a.e().getValue().f148a;
        return bVar == bVar2 && this.f143b == bVar2;
    }

    private d.b c(f fVar) {
        Map.Entry<f, a> entryD = this.f142a.d(fVar);
        return a(a(this.f143b, entryD != null ? entryD.getValue().f148a : null), !this.g.isEmpty() ? this.g.get(this.g.size() - 1) : null);
    }

    @Override // android.arch.lifecycle.d
    public void a(f fVar) {
        g gVar;
        a aVar = new a(fVar, this.f143b == d.b.DESTROYED ? d.b.DESTROYED : d.b.INITIALIZED);
        if (this.f142a.a(fVar, aVar) == null && (gVar = this.f144c.get()) != null) {
            boolean z = this.f145d != 0 || this.e;
            d.b bVarC = c(fVar);
            this.f145d++;
            while (aVar.f148a.compareTo(bVarC) < 0 && this.f142a.c(fVar)) {
                c(aVar.f148a);
                aVar.a(gVar, e(aVar.f148a));
                c();
                bVarC = c(fVar);
            }
            if (!z) {
                d();
            }
            this.f145d--;
        }
    }

    private void c() {
        this.g.remove(this.g.size() - 1);
    }

    private void c(d.b bVar) {
        this.g.add(bVar);
    }

    @Override // android.arch.lifecycle.d
    public void b(f fVar) {
        this.f142a.b(fVar);
    }

    @Override // android.arch.lifecycle.d
    public d.b a() {
        return this.f143b;
    }

    static d.b b(d.a aVar) {
        switch (aVar) {
            case ON_CREATE:
            case ON_STOP:
                return d.b.CREATED;
            case ON_START:
            case ON_PAUSE:
                return d.b.STARTED;
            case ON_RESUME:
                return d.b.RESUMED;
            case ON_DESTROY:
                return d.b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + aVar);
        }
    }

    private static d.a d(d.b bVar) {
        switch (bVar) {
            case INITIALIZED:
                throw new IllegalArgumentException();
            case CREATED:
                return d.a.ON_DESTROY;
            case STARTED:
                return d.a.ON_STOP;
            case RESUMED:
                return d.a.ON_PAUSE;
            case DESTROYED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
    }

    private static d.a e(d.b bVar) {
        switch (bVar) {
            case INITIALIZED:
            case DESTROYED:
                return d.a.ON_CREATE;
            case CREATED:
                return d.a.ON_START;
            case STARTED:
                return d.a.ON_RESUME;
            case RESUMED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
    }

    private void a(g gVar) {
        android.arch.a.b.b<f, a>.d dVarC = this.f142a.c();
        while (dVarC.hasNext() && !this.f) {
            Map.Entry next = dVarC.next();
            a aVar = (a) next.getValue();
            while (aVar.f148a.compareTo(this.f143b) < 0 && !this.f && this.f142a.c((f) next.getKey())) {
                c(aVar.f148a);
                aVar.a(gVar, e(aVar.f148a));
                c();
            }
        }
    }

    private void b(g gVar) {
        Iterator<Map.Entry<f, a>> itB = this.f142a.b();
        while (itB.hasNext() && !this.f) {
            Map.Entry<f, a> next = itB.next();
            a value = next.getValue();
            while (value.f148a.compareTo(this.f143b) > 0 && !this.f && this.f142a.c(next.getKey())) {
                d.a aVarD = d(value.f148a);
                c(b(aVarD));
                value.a(gVar, aVarD);
                c();
            }
        }
    }

    private void d() {
        g gVar = this.f144c.get();
        if (gVar == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        while (!b()) {
            this.f = false;
            if (this.f143b.compareTo(this.f142a.d().getValue().f148a) < 0) {
                b(gVar);
            }
            Map.Entry<f, a> entryE = this.f142a.e();
            if (!this.f && entryE != null && this.f143b.compareTo(entryE.getValue().f148a) > 0) {
                a(gVar);
            }
        }
        this.f = false;
    }

    static d.b a(d.b bVar, d.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        d.b f148a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        GenericLifecycleObserver f149b;

        a(f fVar, d.b bVar) {
            this.f149b = j.a(fVar);
            this.f148a = bVar;
        }

        void a(g gVar, d.a aVar) {
            d.b bVarB = h.b(aVar);
            this.f148a = h.a(this.f148a, bVarB);
            this.f149b.a(gVar, aVar);
            this.f148a = bVarB;
        }
    }
}

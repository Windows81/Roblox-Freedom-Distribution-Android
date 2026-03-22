package androidx.lifecycle;

import android.util.Log;
import androidx.lifecycle.g;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<j> f2126c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.a.a.b.a<i, a> f2124a = new androidx.a.a.b.a<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2127d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2128e = false;
    private boolean f = false;
    private ArrayList<g.b> g = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g.b f2125b = g.b.INITIALIZED;

    public k(j jVar) {
        this.f2126c = new WeakReference<>(jVar);
    }

    public void a(g.b bVar) {
        b(bVar);
    }

    public void a(g.a aVar) {
        b(b(aVar));
    }

    private void b(g.b bVar) {
        if (this.f2125b == bVar) {
            return;
        }
        this.f2125b = bVar;
        if (this.f2128e || this.f2127d != 0) {
            this.f = true;
            return;
        }
        this.f2128e = true;
        d();
        this.f2128e = false;
    }

    private boolean b() {
        if (this.f2124a.a() == 0) {
            return true;
        }
        g.b bVar = this.f2124a.d().getValue().f2131a;
        g.b bVar2 = this.f2124a.e().getValue().f2131a;
        return bVar == bVar2 && this.f2125b == bVar2;
    }

    private g.b c(i iVar) {
        Map.Entry<i, a> entryD = this.f2124a.d(iVar);
        g.b bVar = null;
        g.b bVar2 = entryD != null ? entryD.getValue().f2131a : null;
        if (!this.g.isEmpty()) {
            bVar = this.g.get(r0.size() - 1);
        }
        return a(a(this.f2125b, bVar2), bVar);
    }

    @Override // androidx.lifecycle.g
    public void a(i iVar) {
        j jVar;
        a aVar = new a(iVar, this.f2125b == g.b.DESTROYED ? g.b.DESTROYED : g.b.INITIALIZED);
        if (this.f2124a.a(iVar, aVar) == null && (jVar = this.f2126c.get()) != null) {
            boolean z = this.f2127d != 0 || this.f2128e;
            g.b bVarC = c(iVar);
            this.f2127d++;
            while (aVar.f2131a.compareTo(bVarC) < 0 && this.f2124a.c(iVar)) {
                c(aVar.f2131a);
                aVar.a(jVar, e(aVar.f2131a));
                c();
                bVarC = c(iVar);
            }
            if (!z) {
                d();
            }
            this.f2127d--;
        }
    }

    private void c() {
        this.g.remove(r0.size() - 1);
    }

    private void c(g.b bVar) {
        this.g.add(bVar);
    }

    @Override // androidx.lifecycle.g
    public void b(i iVar) {
        this.f2124a.b(iVar);
    }

    @Override // androidx.lifecycle.g
    public g.b a() {
        return this.f2125b;
    }

    static g.b b(g.a aVar) {
        switch (AnonymousClass1.f2129a[aVar.ordinal()]) {
            case 1:
            case 2:
                return g.b.CREATED;
            case 3:
            case 4:
                return g.b.STARTED;
            case 5:
                return g.b.RESUMED;
            case 6:
                return g.b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + aVar);
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.k$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f2130b;

        static {
            int[] iArr = new int[g.b.values().length];
            f2130b = iArr;
            try {
                iArr[g.b.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2130b[g.b.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2130b[g.b.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2130b[g.b.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2130b[g.b.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[g.a.values().length];
            f2129a = iArr2;
            try {
                iArr2[g.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2129a[g.a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2129a[g.a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2129a[g.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2129a[g.a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2129a[g.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2129a[g.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private static g.a d(g.b bVar) {
        int i = AnonymousClass1.f2130b[bVar.ordinal()];
        if (i == 1) {
            throw new IllegalArgumentException();
        }
        if (i == 2) {
            return g.a.ON_DESTROY;
        }
        if (i == 3) {
            return g.a.ON_STOP;
        }
        if (i == 4) {
            return g.a.ON_PAUSE;
        }
        if (i == 5) {
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Unexpected state value " + bVar);
    }

    private static g.a e(g.b bVar) {
        int i = AnonymousClass1.f2130b[bVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return g.a.ON_START;
            }
            if (i == 3) {
                return g.a.ON_RESUME;
            }
            if (i == 4) {
                throw new IllegalArgumentException();
            }
            if (i != 5) {
                throw new IllegalArgumentException("Unexpected state value " + bVar);
            }
        }
        return g.a.ON_CREATE;
    }

    private void a(j jVar) {
        androidx.a.a.b.b<i, a>.d dVarC = this.f2124a.c();
        while (dVarC.hasNext() && !this.f) {
            Map.Entry next = dVarC.next();
            a aVar = (a) next.getValue();
            while (aVar.f2131a.compareTo(this.f2125b) < 0 && !this.f && this.f2124a.c((i) next.getKey())) {
                c(aVar.f2131a);
                aVar.a(jVar, e(aVar.f2131a));
                c();
            }
        }
    }

    private void b(j jVar) {
        Iterator<Map.Entry<i, a>> itB = this.f2124a.b();
        while (itB.hasNext() && !this.f) {
            Map.Entry<i, a> next = itB.next();
            a value = next.getValue();
            while (value.f2131a.compareTo(this.f2125b) > 0 && !this.f && this.f2124a.c(next.getKey())) {
                g.a aVarD = d(value.f2131a);
                c(b(aVarD));
                value.a(jVar, aVarD);
                c();
            }
        }
    }

    private void d() {
        j jVar = this.f2126c.get();
        if (jVar == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        while (!b()) {
            this.f = false;
            if (this.f2125b.compareTo(this.f2124a.d().getValue().f2131a) < 0) {
                b(jVar);
            }
            Map.Entry<i, a> entryE = this.f2124a.e();
            if (!this.f && entryE != null && this.f2125b.compareTo(entryE.getValue().f2131a) > 0) {
                a(jVar);
            }
        }
        this.f = false;
    }

    static g.b a(g.b bVar, g.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        g.b f2131a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        f f2132b;

        a(i iVar, g.b bVar) {
            this.f2132b = m.a(iVar);
            this.f2131a = bVar;
        }

        void a(j jVar, g.a aVar) {
            g.b bVarB = k.b(aVar);
            this.f2131a = k.a(this.f2131a, bVarB);
            this.f2132b.a(jVar, aVar);
            this.f2131a = bVarB;
        }
    }
}

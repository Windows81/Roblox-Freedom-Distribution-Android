package androidx.lifecycle;

import androidx.lifecycle.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class FullLifecycleObserverAdapter implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f2094a;

    FullLifecycleObserverAdapter(d dVar) {
        this.f2094a = dVar;
    }

    /* JADX INFO: renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2095a;

        static {
            int[] iArr = new int[g.a.values().length];
            f2095a = iArr;
            try {
                iArr[g.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2095a[g.a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2095a[g.a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2095a[g.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2095a[g.a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2095a[g.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2095a[g.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // androidx.lifecycle.f
    public void a(j jVar, g.a aVar) {
        switch (AnonymousClass1.f2095a[aVar.ordinal()]) {
            case 1:
                this.f2094a.a(jVar);
                return;
            case 2:
                this.f2094a.b(jVar);
                return;
            case 3:
                this.f2094a.c(jVar);
                return;
            case 4:
                this.f2094a.d(jVar);
                return;
            case 5:
                this.f2094a.e(jVar);
                return;
            case 6:
                this.f2094a.f(jVar);
                return;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            default:
                return;
        }
    }
}

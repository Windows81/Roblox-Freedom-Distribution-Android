package android.arch.b.b;

import android.arch.b.a.c;
import android.content.Context;
import android.database.Cursor;
import android.support.v4.g.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile android.arch.b.a.b f95a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected List<b> f96b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private android.arch.b.a.c f97c;
    private boolean e;
    private final ReentrantLock f = new ReentrantLock();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final android.arch.b.b.c f98d = c();

    protected abstract android.arch.b.a.c b(android.arch.b.b.a aVar);

    protected abstract android.arch.b.b.c c();

    Lock a() {
        return this.f;
    }

    public void a(android.arch.b.b.a aVar) {
        this.f97c = b(aVar);
        this.f96b = aVar.e;
        this.e = aVar.f;
    }

    public android.arch.b.a.c b() {
        return this.f97c;
    }

    public boolean d() {
        android.arch.b.a.b bVar = this.f95a;
        return bVar != null && bVar.e();
    }

    public void e() {
        if (!this.e && android.arch.a.a.a.a().b()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public Cursor a(String str, Object[] objArr) {
        return this.f97c.a().a(new android.arch.b.a.a(str, objArr));
    }

    public Cursor a(android.arch.b.a.e eVar) {
        e();
        return this.f97c.a().a(eVar);
    }

    public android.arch.b.a.f a(String str) {
        e();
        return this.f97c.a().a(str);
    }

    public void f() {
        e();
        this.f98d.b();
        this.f97c.a().a();
    }

    public void g() {
        this.f97c.a().b();
        if (!i()) {
            this.f98d.a();
        }
    }

    public void h() {
        this.f97c.a().c();
    }

    protected void a(android.arch.b.a.b bVar) {
        this.f98d.a(bVar);
    }

    public boolean i() {
        return this.f97c.a().d();
    }

    public static class a<T extends e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<T> f99a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f100b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Context f101c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList<b> f102d;
        private c.InterfaceC0001c e;
        private boolean f;
        private boolean g = true;
        private c h = new c();

        a(Context context, Class<T> cls, String str) {
            this.f101c = context;
            this.f99a = cls;
            this.f100b = str;
        }

        public T a() {
            if (this.f101c == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.f99a == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            if (this.e == null) {
                this.e = new android.arch.b.a.a.c();
            }
            android.arch.b.b.a aVar = new android.arch.b.b.a(this.f101c, this.f100b, this.e, this.h, this.f102d, this.f, this.g);
            T t = (T) d.a(this.f99a, "_Impl");
            t.a(aVar);
            return t;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private n<n<android.arch.b.b.a.a>> f103a = new n<>();

        public List<android.arch.b.b.a.a> a(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return a(new ArrayList(), i2 > i, i, i2);
        }

        private List<android.arch.b.b.a.a> a(List<android.arch.b.b.a.a> list, boolean z, int i, int i2) {
            int i3;
            boolean z2;
            int i4;
            int i5 = z ? -1 : 1;
            int i6 = i;
            while (true) {
                if (z) {
                    if (i6 >= i2) {
                        return list;
                    }
                } else if (i6 <= i2) {
                    return list;
                }
                n<android.arch.b.b.a.a> nVarA = this.f103a.a(i6);
                if (nVarA == null) {
                    return null;
                }
                int iB = nVarA.b();
                if (z) {
                    i3 = iB - 1;
                    iB = -1;
                } else {
                    i3 = 0;
                }
                int i7 = i3;
                while (true) {
                    if (i7 != iB) {
                        int iD = nVarA.d(i7);
                        if (iD > i2 || iD <= i6) {
                            i7 += i5;
                        } else {
                            list.add(nVarA.e(i7));
                            z2 = true;
                            i4 = iD;
                            break;
                        }
                    } else {
                        z2 = false;
                        i4 = i6;
                        break;
                    }
                }
                if (!z2) {
                    return null;
                }
                i6 = i4;
            }
        }
    }

    public static abstract class b {
        public void a(android.arch.b.a.b bVar) {
        }

        public void b(android.arch.b.a.b bVar) {
        }
    }
}

package androidx.recyclerview.widget;

import androidx.core.g.d;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class a implements g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList<b> f2297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList<b> f2298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final InterfaceC0055a f2299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Runnable f2300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f2301e;
    final g f;
    private d.a<b> g;
    private int h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    interface InterfaceC0055a {
        RecyclerView.w a(int i);

        void a(int i, int i2);

        void a(int i, int i2, Object obj);

        void a(b bVar);

        void b(int i, int i2);

        void b(b bVar);

        void c(int i, int i2);

        void d(int i, int i2);
    }

    a(InterfaceC0055a interfaceC0055a) {
        this(interfaceC0055a, false);
    }

    a(InterfaceC0055a interfaceC0055a, boolean z) {
        this.g = new d.b(30);
        this.f2297a = new ArrayList<>();
        this.f2298b = new ArrayList<>();
        this.h = 0;
        this.f2299c = interfaceC0055a;
        this.f2301e = z;
        this.f = new g(this);
    }

    void a() {
        a(this.f2297a);
        a(this.f2298b);
        this.h = 0;
    }

    void b() {
        this.f.a(this.f2297a);
        int size = this.f2297a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f2297a.get(i);
            int i2 = bVar.f2302a;
            if (i2 == 1) {
                f(bVar);
            } else if (i2 == 2) {
                c(bVar);
            } else if (i2 == 4) {
                d(bVar);
            } else if (i2 == 8) {
                b(bVar);
            }
            Runnable runnable = this.f2300d;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f2297a.clear();
    }

    void c() {
        int size = this.f2298b.size();
        for (int i = 0; i < size; i++) {
            this.f2299c.b(this.f2298b.get(i));
        }
        a(this.f2298b);
        this.h = 0;
    }

    private void b(b bVar) {
        g(bVar);
    }

    private void c(b bVar) {
        boolean z;
        byte b2;
        int i = bVar.f2303b;
        int i2 = bVar.f2303b + bVar.f2305d;
        int i3 = bVar.f2303b;
        byte b3 = -1;
        int i4 = 0;
        while (i3 < i2) {
            if (this.f2299c.a(i3) != null || d(i3)) {
                if (b3 == 0) {
                    e(a(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 1;
            } else {
                if (b3 == 1) {
                    g(a(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
            b3 = b2;
        }
        if (i4 != bVar.f2305d) {
            a(bVar);
            bVar = a(2, i, i4, null);
        }
        if (b3 == 0) {
            e(bVar);
        } else {
            g(bVar);
        }
    }

    private void d(b bVar) {
        int i = bVar.f2303b;
        int i2 = bVar.f2303b + bVar.f2305d;
        byte b2 = -1;
        int i3 = 0;
        for (int i4 = bVar.f2303b; i4 < i2; i4++) {
            if (this.f2299c.a(i4) != null || d(i4)) {
                if (b2 == 0) {
                    e(a(4, i, i3, bVar.f2304c));
                    i = i4;
                    i3 = 0;
                }
                b2 = 1;
            } else {
                if (b2 == 1) {
                    g(a(4, i, i3, bVar.f2304c));
                    i = i4;
                    i3 = 0;
                }
                b2 = 0;
            }
            i3++;
        }
        if (i3 != bVar.f2305d) {
            Object obj = bVar.f2304c;
            a(bVar);
            bVar = a(4, i, i3, obj);
        }
        if (b2 == 0) {
            e(bVar);
        } else {
            g(bVar);
        }
    }

    private void e(b bVar) {
        int i;
        if (bVar.f2302a == 1 || bVar.f2302a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iC = c(bVar.f2303b, bVar.f2302a);
        int i2 = bVar.f2303b;
        int i3 = bVar.f2302a;
        if (i3 == 2) {
            i = 0;
        } else {
            if (i3 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i = 1;
        }
        int i4 = 1;
        for (int i5 = 1; i5 < bVar.f2305d; i5++) {
            int iC2 = c(bVar.f2303b + (i * i5), bVar.f2302a);
            int i6 = bVar.f2302a;
            if (i6 == 2 ? iC2 == iC : i6 == 4 && iC2 == iC + 1) {
                i4++;
            } else {
                b bVarA = a(bVar.f2302a, iC, i4, bVar.f2304c);
                a(bVarA, i2);
                a(bVarA);
                if (bVar.f2302a == 4) {
                    i2 += i4;
                }
                iC = iC2;
                i4 = 1;
            }
        }
        Object obj = bVar.f2304c;
        a(bVar);
        if (i4 > 0) {
            b bVarA2 = a(bVar.f2302a, iC, i4, obj);
            a(bVarA2, i2);
            a(bVarA2);
        }
    }

    void a(b bVar, int i) {
        this.f2299c.a(bVar);
        int i2 = bVar.f2302a;
        if (i2 == 2) {
            this.f2299c.a(i, bVar.f2305d);
        } else {
            if (i2 == 4) {
                this.f2299c.a(i, bVar.f2305d, bVar.f2304c);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    private int c(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.f2298b.size() - 1; size >= 0; size--) {
            b bVar = this.f2298b.get(size);
            if (bVar.f2302a == 8) {
                if (bVar.f2303b < bVar.f2305d) {
                    i3 = bVar.f2303b;
                    i4 = bVar.f2305d;
                } else {
                    i3 = bVar.f2305d;
                    i4 = bVar.f2303b;
                }
                if (i >= i3 && i <= i4) {
                    if (i3 == bVar.f2303b) {
                        if (i2 == 1) {
                            bVar.f2305d++;
                        } else if (i2 == 2) {
                            bVar.f2305d--;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            bVar.f2303b++;
                        } else if (i2 == 2) {
                            bVar.f2303b--;
                        }
                        i--;
                    }
                } else if (i < bVar.f2303b) {
                    if (i2 == 1) {
                        bVar.f2303b++;
                        bVar.f2305d++;
                    } else if (i2 == 2) {
                        bVar.f2303b--;
                        bVar.f2305d--;
                    }
                }
            } else if (bVar.f2303b <= i) {
                if (bVar.f2302a == 1) {
                    i -= bVar.f2305d;
                } else if (bVar.f2302a == 2) {
                    i += bVar.f2305d;
                }
            } else if (i2 == 1) {
                bVar.f2303b++;
            } else if (i2 == 2) {
                bVar.f2303b--;
            }
        }
        for (int size2 = this.f2298b.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f2298b.get(size2);
            if (bVar2.f2302a == 8) {
                if (bVar2.f2305d == bVar2.f2303b || bVar2.f2305d < 0) {
                    this.f2298b.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f2305d <= 0) {
                this.f2298b.remove(size2);
                a(bVar2);
            }
        }
        return i;
    }

    private boolean d(int i) {
        int size = this.f2298b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f2298b.get(i2);
            if (bVar.f2302a == 8) {
                if (a(bVar.f2305d, i2 + 1) == i) {
                    return true;
                }
            } else if (bVar.f2302a == 1) {
                int i3 = bVar.f2303b + bVar.f2305d;
                for (int i4 = bVar.f2303b; i4 < i3; i4++) {
                    if (a(i4, i2 + 1) == i) {
                        return true;
                    }
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void f(b bVar) {
        g(bVar);
    }

    private void g(b bVar) {
        this.f2298b.add(bVar);
        int i = bVar.f2302a;
        if (i == 1) {
            this.f2299c.c(bVar.f2303b, bVar.f2305d);
            return;
        }
        if (i == 2) {
            this.f2299c.b(bVar.f2303b, bVar.f2305d);
            return;
        }
        if (i == 4) {
            this.f2299c.a(bVar.f2303b, bVar.f2305d, bVar.f2304c);
        } else {
            if (i == 8) {
                this.f2299c.d(bVar.f2303b, bVar.f2305d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    boolean d() {
        return this.f2297a.size() > 0;
    }

    boolean a(int i) {
        return (i & this.h) != 0;
    }

    int b(int i) {
        return a(i, 0);
    }

    int a(int i, int i2) {
        int size = this.f2298b.size();
        while (i2 < size) {
            b bVar = this.f2298b.get(i2);
            if (bVar.f2302a == 8) {
                if (bVar.f2303b == i) {
                    i = bVar.f2305d;
                } else {
                    if (bVar.f2303b < i) {
                        i--;
                    }
                    if (bVar.f2305d <= i) {
                        i++;
                    }
                }
            } else if (bVar.f2303b > i) {
                continue;
            } else if (bVar.f2302a == 2) {
                if (i < bVar.f2303b + bVar.f2305d) {
                    return -1;
                }
                i -= bVar.f2305d;
            } else if (bVar.f2302a == 1) {
                i += bVar.f2305d;
            }
            i2++;
        }
        return i;
    }

    boolean a(int i, int i2, Object obj) {
        if (i2 < 1) {
            return false;
        }
        this.f2297a.add(a(4, i, i2, obj));
        this.h |= 4;
        return this.f2297a.size() == 1;
    }

    boolean b(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.f2297a.add(a(1, i, i2, null));
        this.h |= 1;
        return this.f2297a.size() == 1;
    }

    void e() {
        c();
        int size = this.f2297a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f2297a.get(i);
            int i2 = bVar.f2302a;
            if (i2 == 1) {
                this.f2299c.b(bVar);
                this.f2299c.c(bVar.f2303b, bVar.f2305d);
            } else if (i2 == 2) {
                this.f2299c.b(bVar);
                this.f2299c.a(bVar.f2303b, bVar.f2305d);
            } else if (i2 == 4) {
                this.f2299c.b(bVar);
                this.f2299c.a(bVar.f2303b, bVar.f2305d, bVar.f2304c);
            } else if (i2 == 8) {
                this.f2299c.b(bVar);
                this.f2299c.d(bVar.f2303b, bVar.f2305d);
            }
            Runnable runnable = this.f2300d;
            if (runnable != null) {
                runnable.run();
            }
        }
        a(this.f2297a);
        this.h = 0;
    }

    public int c(int i) {
        int size = this.f2297a.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f2297a.get(i2);
            int i3 = bVar.f2302a;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 8) {
                        if (bVar.f2303b == i) {
                            i = bVar.f2305d;
                        } else {
                            if (bVar.f2303b < i) {
                                i--;
                            }
                            if (bVar.f2305d <= i) {
                                i++;
                            }
                        }
                    }
                } else if (bVar.f2303b > i) {
                    continue;
                } else {
                    if (bVar.f2303b + bVar.f2305d > i) {
                        return -1;
                    }
                    i -= bVar.f2305d;
                }
            } else if (bVar.f2303b <= i) {
                i += bVar.f2305d;
            }
        }
        return i;
    }

    boolean f() {
        return (this.f2298b.isEmpty() || this.f2297a.isEmpty()) ? false : true;
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2302a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2303b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f2304c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2305d;

        b(int i, int i2, int i3, Object obj) {
            this.f2302a = i;
            this.f2303b = i2;
            this.f2305d = i3;
            this.f2304c = obj;
        }

        String a() {
            int i = this.f2302a;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f2303b + "c:" + this.f2305d + ",p:" + this.f2304c + "]";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            int i = this.f2302a;
            if (i != bVar.f2302a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f2305d - this.f2303b) == 1 && this.f2305d == bVar.f2303b && this.f2303b == bVar.f2305d) {
                return true;
            }
            if (this.f2305d != bVar.f2305d || this.f2303b != bVar.f2303b) {
                return false;
            }
            Object obj2 = this.f2304c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f2304c)) {
                    return false;
                }
            } else if (bVar.f2304c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f2302a * 31) + this.f2303b) * 31) + this.f2305d;
        }
    }

    @Override // androidx.recyclerview.widget.g.a
    public b a(int i, int i2, int i3, Object obj) {
        b bVarA = this.g.a();
        if (bVarA == null) {
            return new b(i, i2, i3, obj);
        }
        bVarA.f2302a = i;
        bVarA.f2303b = i2;
        bVarA.f2305d = i3;
        bVarA.f2304c = obj;
        return bVarA;
    }

    @Override // androidx.recyclerview.widget.g.a
    public void a(b bVar) {
        if (this.f2301e) {
            return;
        }
        bVar.f2304c = null;
        this.g.a(bVar);
    }

    void a(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(list.get(i));
        }
        list.clear();
    }
}

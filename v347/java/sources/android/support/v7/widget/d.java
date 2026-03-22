package android.support.v7.widget;

import android.support.v4.g.k;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.s;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class d implements s.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList<b> f1632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList<b> f1633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final a f1634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Runnable f1635d;
    final boolean e;
    final s f;
    private k.a<b> g;
    private int h;

    interface a {
        RecyclerView.ViewHolder a(int i);

        void a(int i, int i2);

        void a(int i, int i2, Object obj);

        void a(b bVar);

        void b(int i, int i2);

        void b(b bVar);

        void c(int i, int i2);

        void d(int i, int i2);
    }

    d(a aVar) {
        this(aVar, false);
    }

    d(a aVar, boolean z) {
        this.g = new k.b(30);
        this.f1632a = new ArrayList<>();
        this.f1633b = new ArrayList<>();
        this.h = 0;
        this.f1634c = aVar;
        this.e = z;
        this.f = new s(this);
    }

    void a() {
        a(this.f1632a);
        a(this.f1633b);
        this.h = 0;
    }

    void b() {
        this.f.a(this.f1632a);
        int size = this.f1632a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f1632a.get(i);
            switch (bVar.f1636a) {
                case 1:
                    f(bVar);
                    break;
                case 2:
                    c(bVar);
                    break;
                case 4:
                    d(bVar);
                    break;
                case 8:
                    b(bVar);
                    break;
            }
            if (this.f1635d != null) {
                this.f1635d.run();
            }
        }
        this.f1632a.clear();
    }

    void c() {
        int size = this.f1633b.size();
        for (int i = 0; i < size; i++) {
            this.f1634c.b(this.f1633b.get(i));
        }
        a(this.f1633b);
        this.h = 0;
    }

    private void b(b bVar) {
        g(bVar);
    }

    private void c(b bVar) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4 = bVar.f1637b;
        int i5 = bVar.f1637b + bVar.f1639d;
        byte b2 = -1;
        int i6 = bVar.f1637b;
        int i7 = 0;
        while (i6 < i5) {
            if (this.f1634c.a(i6) != null || d(i6)) {
                if (b2 == 0) {
                    e(a(2, i4, i7, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 1;
            } else {
                if (b2 == 1) {
                    g(a(2, i4, i7, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 0;
            }
            if (z) {
                i3 = i6 - i7;
                i = i5 - i7;
                i2 = 1;
            } else {
                int i8 = i6;
                i = i5;
                i2 = i7 + 1;
                i3 = i8;
            }
            i7 = i2;
            i5 = i;
            i6 = i3 + 1;
        }
        if (i7 != bVar.f1639d) {
            a(bVar);
            bVar = a(2, i4, i7, null);
        }
        if (b2 == 0) {
            e(bVar);
        } else {
            g(bVar);
        }
    }

    private void d(b bVar) {
        int i;
        int i2;
        byte b2;
        int i3 = bVar.f1637b;
        int i4 = bVar.f1637b + bVar.f1639d;
        int i5 = bVar.f1637b;
        byte b3 = -1;
        int i6 = 0;
        while (i5 < i4) {
            if (this.f1634c.a(i5) != null || d(i5)) {
                if (b3 == 0) {
                    e(a(4, i3, i6, bVar.f1638c));
                    i6 = 0;
                    i3 = i5;
                }
                i = i3;
                i2 = i6;
                b2 = 1;
            } else {
                if (b3 == 1) {
                    g(a(4, i3, i6, bVar.f1638c));
                    i6 = 0;
                    i3 = i5;
                }
                i = i3;
                i2 = i6;
                b2 = 0;
            }
            i5++;
            byte b4 = b2;
            i6 = i2 + 1;
            i3 = i;
            b3 = b4;
        }
        if (i6 != bVar.f1639d) {
            Object obj = bVar.f1638c;
            a(bVar);
            bVar = a(4, i3, i6, obj);
        }
        if (b3 == 0) {
            e(bVar);
        } else {
            g(bVar);
        }
    }

    private void e(b bVar) {
        int i;
        boolean z;
        if (bVar.f1636a == 1 || bVar.f1636a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iD = d(bVar.f1637b, bVar.f1636a);
        int i2 = bVar.f1637b;
        switch (bVar.f1636a) {
            case 2:
                i = 0;
                break;
            case 3:
            default:
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            case 4:
                i = 1;
                break;
        }
        int i3 = 1;
        int i4 = iD;
        int i5 = i2;
        for (int i6 = 1; i6 < bVar.f1639d; i6++) {
            int iD2 = d(bVar.f1637b + (i * i6), bVar.f1636a);
            switch (bVar.f1636a) {
                case 2:
                    z = iD2 == i4;
                    break;
                case 3:
                default:
                    z = false;
                    break;
                case 4:
                    z = iD2 == i4 + 1;
                    break;
            }
            if (z) {
                i3++;
            } else {
                b bVarA = a(bVar.f1636a, i4, i3, bVar.f1638c);
                a(bVarA, i5);
                a(bVarA);
                if (bVar.f1636a == 4) {
                    i5 += i3;
                }
                i3 = 1;
                i4 = iD2;
            }
        }
        Object obj = bVar.f1638c;
        a(bVar);
        if (i3 > 0) {
            b bVarA2 = a(bVar.f1636a, i4, i3, obj);
            a(bVarA2, i5);
            a(bVarA2);
        }
    }

    void a(b bVar, int i) {
        this.f1634c.a(bVar);
        switch (bVar.f1636a) {
            case 2:
                this.f1634c.a(i, bVar.f1639d);
                return;
            case 3:
            default:
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            case 4:
                this.f1634c.a(i, bVar.f1639d, bVar.f1638c);
                return;
        }
    }

    private int d(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = i;
        for (int size = this.f1633b.size() - 1; size >= 0; size--) {
            b bVar = this.f1633b.get(size);
            if (bVar.f1636a == 8) {
                if (bVar.f1637b < bVar.f1639d) {
                    i3 = bVar.f1637b;
                    i4 = bVar.f1639d;
                } else {
                    i3 = bVar.f1639d;
                    i4 = bVar.f1637b;
                }
                if (i6 >= i3 && i6 <= i4) {
                    if (i3 == bVar.f1637b) {
                        if (i2 == 1) {
                            bVar.f1639d++;
                        } else if (i2 == 2) {
                            bVar.f1639d--;
                        }
                        i5 = i6 + 1;
                    } else {
                        if (i2 == 1) {
                            bVar.f1637b++;
                        } else if (i2 == 2) {
                            bVar.f1637b--;
                        }
                        i5 = i6 - 1;
                    }
                } else if (i6 >= bVar.f1637b) {
                    i5 = i6;
                } else if (i2 == 1) {
                    bVar.f1637b++;
                    bVar.f1639d++;
                    i5 = i6;
                } else {
                    if (i2 == 2) {
                        bVar.f1637b--;
                        bVar.f1639d--;
                    }
                    i5 = i6;
                }
                i6 = i5;
            } else if (bVar.f1637b <= i6) {
                if (bVar.f1636a == 1) {
                    i6 -= bVar.f1639d;
                } else if (bVar.f1636a == 2) {
                    i6 += bVar.f1639d;
                }
            } else if (i2 == 1) {
                bVar.f1637b++;
            } else if (i2 == 2) {
                bVar.f1637b--;
            }
        }
        for (int size2 = this.f1633b.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f1633b.get(size2);
            if (bVar2.f1636a == 8) {
                if (bVar2.f1639d == bVar2.f1637b || bVar2.f1639d < 0) {
                    this.f1633b.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f1639d <= 0) {
                this.f1633b.remove(size2);
                a(bVar2);
            }
        }
        return i6;
    }

    private boolean d(int i) {
        int size = this.f1633b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f1633b.get(i2);
            if (bVar.f1636a == 8) {
                if (a(bVar.f1639d, i2 + 1) == i) {
                    return true;
                }
            } else if (bVar.f1636a == 1) {
                int i3 = bVar.f1637b + bVar.f1639d;
                for (int i4 = bVar.f1637b; i4 < i3; i4++) {
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
        this.f1633b.add(bVar);
        switch (bVar.f1636a) {
            case 1:
                this.f1634c.c(bVar.f1637b, bVar.f1639d);
                return;
            case 2:
                this.f1634c.b(bVar.f1637b, bVar.f1639d);
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                throw new IllegalArgumentException("Unknown update op type for " + bVar);
            case 4:
                this.f1634c.a(bVar.f1637b, bVar.f1639d, bVar.f1638c);
                return;
            case 8:
                this.f1634c.d(bVar.f1637b, bVar.f1639d);
                return;
        }
    }

    boolean d() {
        return this.f1632a.size() > 0;
    }

    boolean a(int i) {
        return (this.h & i) != 0;
    }

    int b(int i) {
        return a(i, 0);
    }

    int a(int i, int i2) {
        int size = this.f1633b.size();
        int i3 = i;
        while (i2 < size) {
            b bVar = this.f1633b.get(i2);
            if (bVar.f1636a == 8) {
                if (bVar.f1637b == i3) {
                    i3 = bVar.f1639d;
                } else {
                    if (bVar.f1637b < i3) {
                        i3--;
                    }
                    if (bVar.f1639d <= i3) {
                        i3++;
                    }
                }
            } else if (bVar.f1637b > i3) {
                continue;
            } else if (bVar.f1636a == 2) {
                if (i3 < bVar.f1637b + bVar.f1639d) {
                    return -1;
                }
                i3 -= bVar.f1639d;
            } else if (bVar.f1636a == 1) {
                i3 += bVar.f1639d;
            }
            i2++;
        }
        return i3;
    }

    boolean a(int i, int i2, Object obj) {
        if (i2 < 1) {
            return false;
        }
        this.f1632a.add(a(4, i, i2, obj));
        this.h |= 4;
        return this.f1632a.size() == 1;
    }

    boolean b(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.f1632a.add(a(1, i, i2, null));
        this.h |= 1;
        return this.f1632a.size() == 1;
    }

    boolean c(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.f1632a.add(a(2, i, i2, null));
        this.h |= 2;
        return this.f1632a.size() == 1;
    }

    boolean a(int i, int i2, int i3) {
        if (i == i2) {
            return false;
        }
        if (i3 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f1632a.add(a(8, i, i2, null));
        this.h |= 8;
        return this.f1632a.size() == 1;
    }

    void e() {
        c();
        int size = this.f1632a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f1632a.get(i);
            switch (bVar.f1636a) {
                case 1:
                    this.f1634c.b(bVar);
                    this.f1634c.c(bVar.f1637b, bVar.f1639d);
                    break;
                case 2:
                    this.f1634c.b(bVar);
                    this.f1634c.a(bVar.f1637b, bVar.f1639d);
                    break;
                case 4:
                    this.f1634c.b(bVar);
                    this.f1634c.a(bVar.f1637b, bVar.f1639d, bVar.f1638c);
                    break;
                case 8:
                    this.f1634c.b(bVar);
                    this.f1634c.d(bVar.f1637b, bVar.f1639d);
                    break;
            }
            if (this.f1635d != null) {
                this.f1635d.run();
            }
        }
        a(this.f1632a);
        this.h = 0;
    }

    public int c(int i) {
        int size = this.f1632a.size();
        int i2 = i;
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f1632a.get(i3);
            switch (bVar.f1636a) {
                case 1:
                    if (bVar.f1637b <= i2) {
                        i2 += bVar.f1639d;
                    }
                    break;
                case 2:
                    if (bVar.f1637b > i2) {
                        continue;
                    } else {
                        if (bVar.f1637b + bVar.f1639d > i2) {
                            return -1;
                        }
                        i2 -= bVar.f1639d;
                    }
                    break;
                case 8:
                    if (bVar.f1637b == i2) {
                        i2 = bVar.f1639d;
                    } else {
                        if (bVar.f1637b < i2) {
                            i2--;
                        }
                        if (bVar.f1639d <= i2) {
                            i2++;
                        }
                    }
                    break;
            }
        }
        return i2;
    }

    boolean f() {
        return (this.f1633b.isEmpty() || this.f1632a.isEmpty()) ? false : true;
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1636a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1637b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f1638c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1639d;

        b(int i, int i2, int i3, Object obj) {
            this.f1636a = i;
            this.f1637b = i2;
            this.f1639d = i3;
            this.f1638c = obj;
        }

        String a() {
            switch (this.f1636a) {
                case 1:
                    return "add";
                case 2:
                    return "rm";
                case 3:
                case 5:
                case 6:
                case 7:
                default:
                    return "??";
                case 4:
                    return "up";
                case 8:
                    return "mv";
            }
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f1637b + "c:" + this.f1639d + ",p:" + this.f1638c + "]";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f1636a != bVar.f1636a) {
                return false;
            }
            if (this.f1636a == 8 && Math.abs(this.f1639d - this.f1637b) == 1 && this.f1639d == bVar.f1637b && this.f1637b == bVar.f1639d) {
                return true;
            }
            if (this.f1639d == bVar.f1639d && this.f1637b == bVar.f1637b) {
                return this.f1638c != null ? this.f1638c.equals(bVar.f1638c) : bVar.f1638c == null;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f1636a * 31) + this.f1637b) * 31) + this.f1639d;
        }
    }

    @Override // android.support.v7.widget.s.a
    public b a(int i, int i2, int i3, Object obj) {
        b bVarA = this.g.a();
        if (bVarA == null) {
            return new b(i, i2, i3, obj);
        }
        bVarA.f1636a = i;
        bVarA.f1637b = i2;
        bVarA.f1639d = i3;
        bVarA.f1638c = obj;
        return bVarA;
    }

    @Override // android.support.v7.widget.s.a
    public void a(b bVar) {
        if (!this.e) {
            bVar.f1638c = null;
            this.g.a(bVar);
        }
    }

    void a(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(list.get(i));
        }
        list.clear();
    }
}

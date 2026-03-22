package android.support.v7.widget;

import android.support.v7.widget.d;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f1714a;

    interface a {
        d.b a(int i, int i2, int i3, Object obj);

        void a(d.b bVar);
    }

    s(a aVar) {
        this.f1714a = aVar;
    }

    void a(List<d.b> list) {
        while (true) {
            int iB = b(list);
            if (iB != -1) {
                a(list, iB, iB + 1);
            } else {
                return;
            }
        }
    }

    private void a(List<d.b> list, int i, int i2) {
        d.b bVar = list.get(i);
        d.b bVar2 = list.get(i2);
        switch (bVar2.f1636a) {
            case 1:
                c(list, i, bVar, i2, bVar2);
                break;
            case 2:
                a(list, i, bVar, i2, bVar2);
                break;
            case 4:
                b(list, i, bVar, i2, bVar2);
                break;
        }
    }

    void a(List<d.b> list, int i, d.b bVar, int i2, d.b bVar2) {
        boolean z;
        d.b bVarA;
        boolean z2 = false;
        if (bVar.f1637b < bVar.f1639d) {
            z = bVar2.f1637b == bVar.f1637b && bVar2.f1639d == bVar.f1639d - bVar.f1637b;
        } else if (bVar2.f1637b == bVar.f1639d + 1 && bVar2.f1639d == bVar.f1637b - bVar.f1639d) {
            z2 = true;
            z = true;
        } else {
            z = false;
            z2 = true;
        }
        if (bVar.f1639d < bVar2.f1637b) {
            bVar2.f1637b--;
        } else if (bVar.f1639d < bVar2.f1637b + bVar2.f1639d) {
            bVar2.f1639d--;
            bVar.f1636a = 2;
            bVar.f1639d = 1;
            if (bVar2.f1639d == 0) {
                list.remove(i2);
                this.f1714a.a(bVar2);
                return;
            }
            return;
        }
        if (bVar.f1637b <= bVar2.f1637b) {
            bVar2.f1637b++;
            bVarA = null;
        } else if (bVar.f1637b < bVar2.f1637b + bVar2.f1639d) {
            bVarA = this.f1714a.a(2, bVar.f1637b + 1, (bVar2.f1637b + bVar2.f1639d) - bVar.f1637b, null);
            bVar2.f1639d = bVar.f1637b - bVar2.f1637b;
        } else {
            bVarA = null;
        }
        if (z) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f1714a.a(bVar);
            return;
        }
        if (z2) {
            if (bVarA != null) {
                if (bVar.f1637b > bVarA.f1637b) {
                    bVar.f1637b -= bVarA.f1639d;
                }
                if (bVar.f1639d > bVarA.f1637b) {
                    bVar.f1639d -= bVarA.f1639d;
                }
            }
            if (bVar.f1637b > bVar2.f1637b) {
                bVar.f1637b -= bVar2.f1639d;
            }
            if (bVar.f1639d > bVar2.f1637b) {
                bVar.f1639d -= bVar2.f1639d;
            }
        } else {
            if (bVarA != null) {
                if (bVar.f1637b >= bVarA.f1637b) {
                    bVar.f1637b -= bVarA.f1639d;
                }
                if (bVar.f1639d >= bVarA.f1637b) {
                    bVar.f1639d -= bVarA.f1639d;
                }
            }
            if (bVar.f1637b >= bVar2.f1637b) {
                bVar.f1637b -= bVar2.f1639d;
            }
            if (bVar.f1639d >= bVar2.f1637b) {
                bVar.f1639d -= bVar2.f1639d;
            }
        }
        list.set(i, bVar2);
        if (bVar.f1637b != bVar.f1639d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVarA != null) {
            list.add(i, bVarA);
        }
    }

    private void c(List<d.b> list, int i, d.b bVar, int i2, d.b bVar2) {
        int i3 = 0;
        if (bVar.f1639d < bVar2.f1637b) {
            i3 = -1;
        }
        if (bVar.f1637b < bVar2.f1637b) {
            i3++;
        }
        if (bVar2.f1637b <= bVar.f1637b) {
            bVar.f1637b += bVar2.f1639d;
        }
        if (bVar2.f1637b <= bVar.f1639d) {
            bVar.f1639d += bVar2.f1639d;
        }
        bVar2.f1637b = i3 + bVar2.f1637b;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    void b(List<d.b> list, int i, d.b bVar, int i2, d.b bVar2) {
        d.b bVarA;
        d.b bVarA2 = null;
        if (bVar.f1639d < bVar2.f1637b) {
            bVar2.f1637b--;
            bVarA = null;
        } else if (bVar.f1639d < bVar2.f1637b + bVar2.f1639d) {
            bVar2.f1639d--;
            bVarA = this.f1714a.a(4, bVar.f1637b, 1, bVar2.f1638c);
        } else {
            bVarA = null;
        }
        if (bVar.f1637b <= bVar2.f1637b) {
            bVar2.f1637b++;
        } else if (bVar.f1637b < bVar2.f1637b + bVar2.f1639d) {
            int i3 = (bVar2.f1637b + bVar2.f1639d) - bVar.f1637b;
            bVarA2 = this.f1714a.a(4, bVar.f1637b + 1, i3, bVar2.f1638c);
            bVar2.f1639d -= i3;
        }
        list.set(i2, bVar);
        if (bVar2.f1639d > 0) {
            list.set(i, bVar2);
        } else {
            list.remove(i);
            this.f1714a.a(bVar2);
        }
        if (bVarA != null) {
            list.add(i, bVarA);
        }
        if (bVarA2 != null) {
            list.add(i, bVarA2);
        }
    }

    private int b(List<d.b> list) {
        boolean z;
        boolean z2 = false;
        int size = list.size() - 1;
        while (size >= 0) {
            if (list.get(size).f1636a == 8) {
                if (z2) {
                    return size;
                }
                z = z2;
            } else {
                z = true;
            }
            size--;
            z2 = z;
        }
        return -1;
    }
}

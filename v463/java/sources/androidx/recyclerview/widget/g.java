package androidx.recyclerview.widget;

import androidx.recyclerview.widget.a;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f2382a;

    interface a {
        a.b a(int i, int i2, int i3, Object obj);

        void a(a.b bVar);
    }

    g(a aVar) {
        this.f2382a = aVar;
    }

    void a(List<a.b> list) {
        while (true) {
            int iB = b(list);
            if (iB == -1) {
                return;
            } else {
                a(list, iB, iB + 1);
            }
        }
    }

    private void a(List<a.b> list, int i, int i2) {
        a.b bVar = list.get(i);
        a.b bVar2 = list.get(i2);
        int i3 = bVar2.f2302a;
        if (i3 == 1) {
            c(list, i, bVar, i2, bVar2);
        } else if (i3 == 2) {
            a(list, i, bVar, i2, bVar2);
        } else {
            if (i3 != 4) {
                return;
            }
            b(list, i, bVar, i2, bVar2);
        }
    }

    void a(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        boolean z;
        boolean z2 = false;
        if (bVar.f2303b < bVar.f2305d) {
            if (bVar2.f2303b == bVar.f2303b && bVar2.f2305d == bVar.f2305d - bVar.f2303b) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (bVar2.f2303b == bVar.f2305d + 1 && bVar2.f2305d == bVar.f2303b - bVar.f2305d) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        if (bVar.f2305d < bVar2.f2303b) {
            bVar2.f2303b--;
        } else if (bVar.f2305d < bVar2.f2303b + bVar2.f2305d) {
            bVar2.f2305d--;
            bVar.f2302a = 2;
            bVar.f2305d = 1;
            if (bVar2.f2305d == 0) {
                list.remove(i2);
                this.f2382a.a(bVar2);
                return;
            }
            return;
        }
        a.b bVarA = null;
        if (bVar.f2303b <= bVar2.f2303b) {
            bVar2.f2303b++;
        } else if (bVar.f2303b < bVar2.f2303b + bVar2.f2305d) {
            bVarA = this.f2382a.a(2, bVar.f2303b + 1, (bVar2.f2303b + bVar2.f2305d) - bVar.f2303b, null);
            bVar2.f2305d = bVar.f2303b - bVar2.f2303b;
        }
        if (z2) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f2382a.a(bVar);
            return;
        }
        if (z) {
            if (bVarA != null) {
                if (bVar.f2303b > bVarA.f2303b) {
                    bVar.f2303b -= bVarA.f2305d;
                }
                if (bVar.f2305d > bVarA.f2303b) {
                    bVar.f2305d -= bVarA.f2305d;
                }
            }
            if (bVar.f2303b > bVar2.f2303b) {
                bVar.f2303b -= bVar2.f2305d;
            }
            if (bVar.f2305d > bVar2.f2303b) {
                bVar.f2305d -= bVar2.f2305d;
            }
        } else {
            if (bVarA != null) {
                if (bVar.f2303b >= bVarA.f2303b) {
                    bVar.f2303b -= bVarA.f2305d;
                }
                if (bVar.f2305d >= bVarA.f2303b) {
                    bVar.f2305d -= bVarA.f2305d;
                }
            }
            if (bVar.f2303b >= bVar2.f2303b) {
                bVar.f2303b -= bVar2.f2305d;
            }
            if (bVar.f2305d >= bVar2.f2303b) {
                bVar.f2305d -= bVar2.f2305d;
            }
        }
        list.set(i, bVar2);
        if (bVar.f2303b != bVar.f2305d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVarA != null) {
            list.add(i, bVarA);
        }
    }

    private void c(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        int i3 = bVar.f2305d < bVar2.f2303b ? -1 : 0;
        if (bVar.f2303b < bVar2.f2303b) {
            i3++;
        }
        if (bVar2.f2303b <= bVar.f2303b) {
            bVar.f2303b += bVar2.f2305d;
        }
        if (bVar2.f2303b <= bVar.f2305d) {
            bVar.f2305d += bVar2.f2305d;
        }
        bVar2.f2303b += i3;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void b(java.util.List<androidx.recyclerview.widget.a.b> r8, int r9, androidx.recyclerview.widget.a.b r10, int r11, androidx.recyclerview.widget.a.b r12) {
        /*
            r7 = this;
            int r0 = r10.f2305d
            int r1 = r12.f2303b
            r2 = 4
            r3 = 0
            r4 = 1
            if (r0 >= r1) goto Lf
            int r0 = r12.f2303b
            int r0 = r0 - r4
            r12.f2303b = r0
            goto L28
        Lf:
            int r0 = r10.f2305d
            int r1 = r12.f2303b
            int r5 = r12.f2305d
            int r1 = r1 + r5
            if (r0 >= r1) goto L28
            int r0 = r12.f2305d
            int r0 = r0 - r4
            r12.f2305d = r0
            androidx.recyclerview.widget.g$a r0 = r7.f2382a
            int r1 = r10.f2303b
            java.lang.Object r5 = r12.f2304c
            androidx.recyclerview.widget.a$b r0 = r0.a(r2, r1, r4, r5)
            goto L29
        L28:
            r0 = r3
        L29:
            int r1 = r10.f2303b
            int r5 = r12.f2303b
            if (r1 > r5) goto L35
            int r1 = r12.f2303b
            int r1 = r1 + r4
            r12.f2303b = r1
            goto L56
        L35:
            int r1 = r10.f2303b
            int r5 = r12.f2303b
            int r6 = r12.f2305d
            int r5 = r5 + r6
            if (r1 >= r5) goto L56
            int r1 = r12.f2303b
            int r3 = r12.f2305d
            int r1 = r1 + r3
            int r3 = r10.f2303b
            int r1 = r1 - r3
            androidx.recyclerview.widget.g$a r3 = r7.f2382a
            int r5 = r10.f2303b
            int r5 = r5 + r4
            java.lang.Object r4 = r12.f2304c
            androidx.recyclerview.widget.a$b r3 = r3.a(r2, r5, r1, r4)
            int r2 = r12.f2305d
            int r2 = r2 - r1
            r12.f2305d = r2
        L56:
            r8.set(r11, r10)
            int r10 = r12.f2305d
            if (r10 <= 0) goto L61
            r8.set(r9, r12)
            goto L69
        L61:
            r8.remove(r9)
            androidx.recyclerview.widget.g$a r10 = r7.f2382a
            r10.a(r12)
        L69:
            if (r0 == 0) goto L6e
            r8.add(r9, r0)
        L6e:
            if (r3 == 0) goto L73
            r8.add(r9, r3)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.g.b(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }

    private int b(List<a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f2302a != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }
}

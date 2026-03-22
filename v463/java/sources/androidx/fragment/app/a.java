package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.h;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class a extends k implements h.InterfaceC0045h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final h f1652a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1656e;
    int f;
    int g;
    int h;
    boolean i;
    String k;
    boolean l;
    int n;
    CharSequence o;
    int p;
    CharSequence q;
    ArrayList<String> r;
    ArrayList<String> s;
    ArrayList<Runnable> u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<C0044a> f1653b = new ArrayList<>();
    boolean j = true;
    int m = -1;
    boolean t = false;

    /* JADX INFO: renamed from: androidx.fragment.app.a$a, reason: collision with other inner class name */
    static final class C0044a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1657a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Fragment f1658b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1659c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1660d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1661e;
        int f;

        C0044a() {
        }

        C0044a(int i, Fragment fragment) {
            this.f1657a = i;
            this.f1658b = fragment;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.m >= 0) {
            sb.append(" #");
            sb.append(this.m);
        }
        if (this.k != null) {
            sb.append(" ");
            sb.append(this.k);
        }
        sb.append("}");
        return sb.toString();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        a(str, printWriter, true);
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.k);
            printWriter.print(" mIndex=");
            printWriter.print(this.m);
            printWriter.print(" mCommitted=");
            printWriter.println(this.l);
            if (this.g != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.g));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.h));
            }
            if (this.f1654c != 0 || this.f1655d != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1654c));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1655d));
            }
            if (this.f1656e != 0 || this.f != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1656e));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f));
            }
            if (this.n != 0 || this.o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.n));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.o);
            }
            if (this.p != 0 || this.q != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.p));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.q);
            }
        }
        if (this.f1653b.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f1653b.size();
        for (int i = 0; i < size; i++) {
            C0044a c0044a = this.f1653b.get(i);
            switch (c0044a.f1657a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                default:
                    str2 = "cmd=" + c0044a.f1657a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(c0044a.f1658b);
            if (z) {
                if (c0044a.f1659c != 0 || c0044a.f1660d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c0044a.f1659c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c0044a.f1660d));
                }
                if (c0044a.f1661e != 0 || c0044a.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0044a.f1661e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c0044a.f));
                }
            }
        }
    }

    public a(h hVar) {
        this.f1652a = hVar;
    }

    void a(C0044a c0044a) {
        this.f1653b.add(c0044a);
        c0044a.f1659c = this.f1654c;
        c0044a.f1660d = this.f1655d;
        c0044a.f1661e = this.f1656e;
        c0044a.f = this.f;
    }

    @Override // androidx.fragment.app.k
    public k a(Fragment fragment, String str) {
        a(0, fragment, str, 1);
        return this;
    }

    @Override // androidx.fragment.app.k
    public k a(int i, Fragment fragment) {
        a(i, fragment, (String) null, 1);
        return this;
    }

    @Override // androidx.fragment.app.k
    public k a(int i, Fragment fragment, String str) {
        a(i, fragment, str, 1);
        return this;
    }

    private void a(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        fragment.B = this.f1652a;
        if (str != null) {
            if (fragment.J != null && !str.equals(fragment.J)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.J + " now " + str);
            }
            fragment.J = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            if (fragment.H != 0 && fragment.H != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.H + " now " + i);
            }
            fragment.H = i;
            fragment.I = i;
        }
        a(new C0044a(i2, fragment));
    }

    @Override // androidx.fragment.app.k
    public k b(int i, Fragment fragment) {
        return b(i, fragment, null);
    }

    @Override // androidx.fragment.app.k
    public k b(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        a(i, fragment, str, 2);
        return this;
    }

    @Override // androidx.fragment.app.k
    public k a(Fragment fragment) {
        a(new C0044a(3, fragment));
        return this;
    }

    @Override // androidx.fragment.app.k
    public k b(Fragment fragment) {
        a(new C0044a(4, fragment));
        return this;
    }

    @Override // androidx.fragment.app.k
    public k c(Fragment fragment) {
        a(new C0044a(5, fragment));
        return this;
    }

    @Override // androidx.fragment.app.k
    public k a(int i, int i2) {
        return a(i, i2, 0, 0);
    }

    @Override // androidx.fragment.app.k
    public k a(int i, int i2, int i3, int i4) {
        this.f1654c = i;
        this.f1655d = i2;
        this.f1656e = i3;
        this.f = i4;
        return this;
    }

    @Override // androidx.fragment.app.k
    public k a(String str) {
        if (!this.j) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.i = true;
        this.k = str;
        return this;
    }

    public k a() {
        if (this.i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.j = false;
        return this;
    }

    void a(int i) {
        if (this.i) {
            if (h.f1683a) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.f1653b.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0044a c0044a = this.f1653b.get(i2);
                if (c0044a.f1658b != null) {
                    c0044a.f1658b.A += i;
                    if (h.f1683a) {
                        Log.v("FragmentManager", "Bump nesting of " + c0044a.f1658b + " to " + c0044a.f1658b.A);
                    }
                }
            }
        }
    }

    public void b() {
        ArrayList<Runnable> arrayList = this.u;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.u.get(i).run();
            }
            this.u = null;
        }
    }

    @Override // androidx.fragment.app.k
    public int c() {
        return a(false);
    }

    @Override // androidx.fragment.app.k
    public int d() {
        return a(true);
    }

    @Override // androidx.fragment.app.k
    public void e() {
        a();
        this.f1652a.b((h.InterfaceC0045h) this, true);
    }

    int a(boolean z) {
        if (this.l) {
            throw new IllegalStateException("commit already called");
        }
        if (h.f1683a) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new androidx.core.g.b("FragmentManager"));
            a("  ", (FileDescriptor) null, printWriter, (String[]) null);
            printWriter.close();
        }
        this.l = true;
        if (this.i) {
            this.m = this.f1652a.a(this);
        } else {
            this.m = -1;
        }
        this.f1652a.a(this, z);
        return this.m;
    }

    @Override // androidx.fragment.app.h.InterfaceC0045h
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (h.f1683a) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.i) {
            return true;
        }
        this.f1652a.b(this);
        return true;
    }

    boolean b(int i) {
        int size = this.f1653b.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0044a c0044a = this.f1653b.get(i2);
            int i3 = c0044a.f1658b != null ? c0044a.f1658b.I : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    boolean a(ArrayList<a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f1653b.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            C0044a c0044a = this.f1653b.get(i4);
            int i5 = c0044a.f1658b != null ? c0044a.f1658b.I : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    a aVar = arrayList.get(i6);
                    int size2 = aVar.f1653b.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        C0044a c0044a2 = aVar.f1653b.get(i7);
                        if ((c0044a2.f1658b != null ? c0044a2.f1658b.I : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    void f() {
        int size = this.f1653b.size();
        for (int i = 0; i < size; i++) {
            C0044a c0044a = this.f1653b.get(i);
            Fragment fragment = c0044a.f1658b;
            if (fragment != null) {
                fragment.b(this.g, this.h);
            }
            switch (c0044a.f1657a) {
                case 1:
                    fragment.b(c0044a.f1659c);
                    this.f1652a.a(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0044a.f1657a);
                case 3:
                    fragment.b(c0044a.f1660d);
                    this.f1652a.i(fragment);
                    break;
                case 4:
                    fragment.b(c0044a.f1660d);
                    this.f1652a.j(fragment);
                    break;
                case 5:
                    fragment.b(c0044a.f1659c);
                    this.f1652a.k(fragment);
                    break;
                case 6:
                    fragment.b(c0044a.f1660d);
                    this.f1652a.l(fragment);
                    break;
                case 7:
                    fragment.b(c0044a.f1659c);
                    this.f1652a.m(fragment);
                    break;
                case 8:
                    this.f1652a.p(fragment);
                    break;
                case 9:
                    this.f1652a.p(null);
                    break;
            }
            if (!this.t && c0044a.f1657a != 1 && fragment != null) {
                this.f1652a.f(fragment);
            }
        }
        if (this.t) {
            return;
        }
        h hVar = this.f1652a;
        hVar.a(hVar.l, true);
    }

    void b(boolean z) {
        for (int size = this.f1653b.size() - 1; size >= 0; size--) {
            C0044a c0044a = this.f1653b.get(size);
            Fragment fragment = c0044a.f1658b;
            if (fragment != null) {
                fragment.b(h.d(this.g), this.h);
            }
            switch (c0044a.f1657a) {
                case 1:
                    fragment.b(c0044a.f);
                    this.f1652a.i(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0044a.f1657a);
                case 3:
                    fragment.b(c0044a.f1661e);
                    this.f1652a.a(fragment, false);
                    break;
                case 4:
                    fragment.b(c0044a.f1661e);
                    this.f1652a.k(fragment);
                    break;
                case 5:
                    fragment.b(c0044a.f);
                    this.f1652a.j(fragment);
                    break;
                case 6:
                    fragment.b(c0044a.f1661e);
                    this.f1652a.m(fragment);
                    break;
                case 7:
                    fragment.b(c0044a.f);
                    this.f1652a.l(fragment);
                    break;
                case 8:
                    this.f1652a.p(null);
                    break;
                case 9:
                    this.f1652a.p(fragment);
                    break;
            }
            if (!this.t && c0044a.f1657a != 3 && fragment != null) {
                this.f1652a.f(fragment);
            }
        }
        if (this.t || !z) {
            return;
        }
        h hVar = this.f1652a;
        hVar.a(hVar.l, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.fragment.app.Fragment a(java.util.ArrayList<androidx.fragment.app.Fragment> r17, androidx.fragment.app.Fragment r18) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r18
            r4 = 0
        L7:
            java.util.ArrayList<androidx.fragment.app.a$a> r5 = r0.f1653b
            int r5 = r5.size()
            if (r4 >= r5) goto Lbc
            java.util.ArrayList<androidx.fragment.app.a$a> r5 = r0.f1653b
            java.lang.Object r5 = r5.get(r4)
            androidx.fragment.app.a$a r5 = (androidx.fragment.app.a.C0044a) r5
            int r6 = r5.f1657a
            r7 = 0
            r8 = 1
            if (r6 == r8) goto Lb4
            r9 = 2
            r10 = 3
            r11 = 9
            if (r6 == r9) goto L5a
            if (r6 == r10) goto L41
            r9 = 6
            if (r6 == r9) goto L41
            r7 = 7
            if (r6 == r7) goto Lb4
            r7 = 8
            if (r6 == r7) goto L31
            goto Lb9
        L31:
            java.util.ArrayList<androidx.fragment.app.a$a> r6 = r0.f1653b
            androidx.fragment.app.a$a r7 = new androidx.fragment.app.a$a
            r7.<init>(r11, r3)
            r6.add(r4, r7)
            int r4 = r4 + 1
            androidx.fragment.app.Fragment r3 = r5.f1658b
            goto Lb9
        L41:
            androidx.fragment.app.Fragment r6 = r5.f1658b
            r1.remove(r6)
            androidx.fragment.app.Fragment r6 = r5.f1658b
            if (r6 != r3) goto Lb9
            java.util.ArrayList<androidx.fragment.app.a$a> r3 = r0.f1653b
            androidx.fragment.app.a$a r6 = new androidx.fragment.app.a$a
            androidx.fragment.app.Fragment r5 = r5.f1658b
            r6.<init>(r11, r5)
            r3.add(r4, r6)
            int r4 = r4 + 1
            r3 = r7
            goto Lb9
        L5a:
            androidx.fragment.app.Fragment r6 = r5.f1658b
            int r9 = r6.I
            int r12 = r17.size()
            int r12 = r12 - r8
            r13 = 0
        L64:
            if (r12 < 0) goto La4
            java.lang.Object r14 = r1.get(r12)
            androidx.fragment.app.Fragment r14 = (androidx.fragment.app.Fragment) r14
            int r15 = r14.I
            if (r15 != r9) goto La1
            if (r14 != r6) goto L74
            r13 = 1
            goto La1
        L74:
            if (r14 != r3) goto L83
            java.util.ArrayList<androidx.fragment.app.a$a> r3 = r0.f1653b
            androidx.fragment.app.a$a r15 = new androidx.fragment.app.a$a
            r15.<init>(r11, r14)
            r3.add(r4, r15)
            int r4 = r4 + 1
            r3 = r7
        L83:
            androidx.fragment.app.a$a r15 = new androidx.fragment.app.a$a
            r15.<init>(r10, r14)
            int r2 = r5.f1659c
            r15.f1659c = r2
            int r2 = r5.f1661e
            r15.f1661e = r2
            int r2 = r5.f1660d
            r15.f1660d = r2
            int r2 = r5.f
            r15.f = r2
            java.util.ArrayList<androidx.fragment.app.a$a> r2 = r0.f1653b
            r2.add(r4, r15)
            r1.remove(r14)
            int r4 = r4 + r8
        La1:
            int r12 = r12 + (-1)
            goto L64
        La4:
            if (r13 == 0) goto Lae
            java.util.ArrayList<androidx.fragment.app.a$a> r2 = r0.f1653b
            r2.remove(r4)
            int r4 = r4 + (-1)
            goto Lb9
        Lae:
            r5.f1657a = r8
            r1.add(r6)
            goto Lb9
        Lb4:
            androidx.fragment.app.Fragment r2 = r5.f1658b
            r1.add(r2)
        Lb9:
            int r4 = r4 + r8
            goto L7
        Lbc:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.a.a(java.util.ArrayList, androidx.fragment.app.Fragment):androidx.fragment.app.Fragment");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.fragment.app.Fragment b(java.util.ArrayList<androidx.fragment.app.Fragment> r5, androidx.fragment.app.Fragment r6) {
        /*
            r4 = this;
            r0 = 0
        L1:
            java.util.ArrayList<androidx.fragment.app.a$a> r1 = r4.f1653b
            int r1 = r1.size()
            if (r0 >= r1) goto L30
            java.util.ArrayList<androidx.fragment.app.a$a> r1 = r4.f1653b
            java.lang.Object r1 = r1.get(r0)
            androidx.fragment.app.a$a r1 = (androidx.fragment.app.a.C0044a) r1
            int r2 = r1.f1657a
            r3 = 1
            if (r2 == r3) goto L28
            r3 = 3
            if (r2 == r3) goto L22
            switch(r2) {
                case 6: goto L22;
                case 7: goto L28;
                case 8: goto L20;
                case 9: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L2d
        L1d:
            androidx.fragment.app.Fragment r6 = r1.f1658b
            goto L2d
        L20:
            r6 = 0
            goto L2d
        L22:
            androidx.fragment.app.Fragment r1 = r1.f1658b
            r5.add(r1)
            goto L2d
        L28:
            androidx.fragment.app.Fragment r1 = r1.f1658b
            r5.remove(r1)
        L2d:
            int r0 = r0 + 1
            goto L1
        L30:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.a.b(java.util.ArrayList, androidx.fragment.app.Fragment):androidx.fragment.app.Fragment");
    }

    boolean g() {
        for (int i = 0; i < this.f1653b.size(); i++) {
            if (b(this.f1653b.get(i))) {
                return true;
            }
        }
        return false;
    }

    void a(Fragment.c cVar) {
        for (int i = 0; i < this.f1653b.size(); i++) {
            C0044a c0044a = this.f1653b.get(i);
            if (b(c0044a)) {
                c0044a.f1658b.a(cVar);
            }
        }
    }

    private static boolean b(C0044a c0044a) {
        Fragment fragment = c0044a.f1658b;
        return (fragment == null || !fragment.u || fragment.S == null || fragment.L || fragment.K || !fragment.am()) ? false : true;
    }

    public String h() {
        return this.k;
    }
}

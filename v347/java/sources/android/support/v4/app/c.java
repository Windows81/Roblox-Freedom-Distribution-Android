package android.support.v4.app;

import android.support.v4.app.Fragment;
import android.support.v4.app.m;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class c extends p implements m.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final m f691a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f694d;
    int e;
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
    ArrayList<a> f692b = new ArrayList<>();
    boolean j = true;
    int m = -1;
    boolean t = false;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f695a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Fragment f696b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f697c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f698d;
        int e;
        int f;

        a() {
        }

        a(int i, Fragment fragment) {
            this.f695a = i;
            this.f696b = fragment;
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
            if (this.f693c != 0 || this.f694d != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f693c));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f694d));
            }
            if (this.e != 0 || this.f != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.e));
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
        if (!this.f692b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str3 = str + "    ";
            int size = this.f692b.size();
            for (int i = 0; i < size; i++) {
                a aVar = this.f692b.get(i);
                switch (aVar.f695a) {
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
                        str2 = "cmd=" + aVar.f695a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.f696b);
                if (z) {
                    if (aVar.f697c != 0 || aVar.f698d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f697c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f698d));
                    }
                    if (aVar.e != 0 || aVar.f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f));
                    }
                }
            }
        }
    }

    public c(m mVar) {
        this.f691a = mVar;
    }

    void a(a aVar) {
        this.f692b.add(aVar);
        aVar.f697c = this.f693c;
        aVar.f698d = this.f694d;
        aVar.e = this.e;
        aVar.f = this.f;
    }

    @Override // android.support.v4.app.p
    public p a(Fragment fragment, String str) {
        a(0, fragment, str, 1);
        return this;
    }

    @Override // android.support.v4.app.p
    public p a(int i, Fragment fragment) {
        a(i, fragment, (String) null, 1);
        return this;
    }

    @Override // android.support.v4.app.p
    public p a(int i, Fragment fragment, String str) {
        a(i, fragment, str, 1);
        return this;
    }

    private void a(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        fragment.mFragmentManager = this.f691a;
        if (str != null) {
            if (fragment.mTag != null && !str.equals(fragment.mTag)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        a(new a(i2, fragment));
    }

    @Override // android.support.v4.app.p
    public p b(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        a(i, fragment, str, 2);
        return this;
    }

    @Override // android.support.v4.app.p
    public p a(Fragment fragment) {
        a(new a(3, fragment));
        return this;
    }

    @Override // android.support.v4.app.p
    public p b(Fragment fragment) {
        a(new a(4, fragment));
        return this;
    }

    @Override // android.support.v4.app.p
    public p c(Fragment fragment) {
        a(new a(5, fragment));
        return this;
    }

    @Override // android.support.v4.app.p
    public p a(int i, int i2) {
        return a(i, i2, 0, 0);
    }

    @Override // android.support.v4.app.p
    public p a(int i, int i2, int i3, int i4) {
        this.f693c = i;
        this.f694d = i2;
        this.e = i3;
        this.f = i4;
        return this;
    }

    @Override // android.support.v4.app.p
    public p a(String str) {
        if (!this.j) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.i = true;
        this.k = str;
        return this;
    }

    public p a() {
        if (this.i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.j = false;
        return this;
    }

    void a(int i) {
        if (this.i) {
            if (m.f717a) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.f692b.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.f692b.get(i2);
                if (aVar.f696b != null) {
                    aVar.f696b.mBackStackNesting += i;
                    if (m.f717a) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f696b + " to " + aVar.f696b.mBackStackNesting);
                    }
                }
            }
        }
    }

    public void b() {
        if (this.u != null) {
            int size = this.u.size();
            for (int i = 0; i < size; i++) {
                this.u.get(i).run();
            }
            this.u = null;
        }
    }

    @Override // android.support.v4.app.p
    public int c() {
        return a(false);
    }

    @Override // android.support.v4.app.p
    public int d() {
        return a(true);
    }

    @Override // android.support.v4.app.p
    public void e() {
        a();
        this.f691a.b((m.f) this, true);
    }

    int a(boolean z) {
        if (this.l) {
            throw new IllegalStateException("commit already called");
        }
        if (m.f717a) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new android.support.v4.g.e("FragmentManager"));
            a("  ", (FileDescriptor) null, printWriter, (String[]) null);
            printWriter.close();
        }
        this.l = true;
        if (this.i) {
            this.m = this.f691a.a(this);
        } else {
            this.m = -1;
        }
        this.f691a.a(this, z);
        return this.m;
    }

    @Override // android.support.v4.app.m.f
    public boolean a(ArrayList<c> arrayList, ArrayList<Boolean> arrayList2) {
        if (m.f717a) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (this.i) {
            this.f691a.b(this);
            return true;
        }
        return true;
    }

    boolean b(int i) {
        int size = this.f692b.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = this.f692b.get(i2);
            int i3 = aVar.f696b != null ? aVar.f696b.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    boolean a(ArrayList<c> arrayList, int i, int i2) {
        int i3;
        if (i2 == i) {
            return false;
        }
        int size = this.f692b.size();
        int i4 = -1;
        int i5 = 0;
        while (i5 < size) {
            a aVar = this.f692b.get(i5);
            int i6 = aVar.f696b != null ? aVar.f696b.mContainerId : 0;
            if (i6 == 0 || i6 == i4) {
                i3 = i4;
            } else {
                for (int i7 = i; i7 < i2; i7++) {
                    c cVar = arrayList.get(i7);
                    int size2 = cVar.f692b.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        a aVar2 = cVar.f692b.get(i8);
                        if ((aVar2.f696b != null ? aVar2.f696b.mContainerId : 0) == i6) {
                            return true;
                        }
                    }
                }
                i3 = i6;
            }
            i5++;
            i4 = i3;
        }
        return false;
    }

    void f() {
        int size = this.f692b.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.f692b.get(i);
            Fragment fragment = aVar.f696b;
            if (fragment != null) {
                fragment.setNextTransition(this.g, this.h);
            }
            switch (aVar.f695a) {
                case 1:
                    fragment.setNextAnim(aVar.f697c);
                    this.f691a.a(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f695a);
                case 3:
                    fragment.setNextAnim(aVar.f698d);
                    this.f691a.i(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.f698d);
                    this.f691a.j(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f697c);
                    this.f691a.k(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.f698d);
                    this.f691a.l(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f697c);
                    this.f691a.m(fragment);
                    break;
                case 8:
                    this.f691a.p(fragment);
                    break;
                case 9:
                    this.f691a.p(null);
                    break;
            }
            if (!this.t && aVar.f695a != 1 && fragment != null) {
                this.f691a.f(fragment);
            }
        }
        if (!this.t) {
            this.f691a.a(this.f691a.l, true);
        }
    }

    void b(boolean z) {
        for (int size = this.f692b.size() - 1; size >= 0; size--) {
            a aVar = this.f692b.get(size);
            Fragment fragment = aVar.f696b;
            if (fragment != null) {
                fragment.setNextTransition(m.d(this.g), this.h);
            }
            switch (aVar.f695a) {
                case 1:
                    fragment.setNextAnim(aVar.f);
                    this.f691a.i(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f695a);
                case 3:
                    fragment.setNextAnim(aVar.e);
                    this.f691a.a(fragment, false);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.e);
                    this.f691a.k(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f);
                    this.f691a.j(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.e);
                    this.f691a.m(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f);
                    this.f691a.l(fragment);
                    break;
                case 8:
                    this.f691a.p(null);
                    break;
                case 9:
                    this.f691a.p(fragment);
                    break;
            }
            if (!this.t && aVar.f695a != 3 && fragment != null) {
                this.f691a.f(fragment);
            }
        }
        if (!this.t && z) {
            this.f691a.a(this.f691a.l, true);
        }
    }

    Fragment a(ArrayList<Fragment> arrayList, Fragment fragment) {
        boolean z;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f692b.size()) {
                a aVar = this.f692b.get(i2);
                switch (aVar.f695a) {
                    case 1:
                    case 7:
                        arrayList.add(aVar.f696b);
                        break;
                    case 2:
                        Fragment fragment2 = aVar.f696b;
                        int i3 = fragment2.mContainerId;
                        boolean z2 = false;
                        int size = arrayList.size() - 1;
                        Fragment fragment3 = fragment;
                        int i4 = i2;
                        while (size >= 0) {
                            Fragment fragment4 = arrayList.get(size);
                            if (fragment4.mContainerId != i3) {
                                z = z2;
                            } else if (fragment4 == fragment2) {
                                z = true;
                            } else {
                                if (fragment4 == fragment3) {
                                    this.f692b.add(i4, new a(9, fragment4));
                                    i4++;
                                    fragment3 = null;
                                }
                                a aVar2 = new a(3, fragment4);
                                aVar2.f697c = aVar.f697c;
                                aVar2.e = aVar.e;
                                aVar2.f698d = aVar.f698d;
                                aVar2.f = aVar.f;
                                this.f692b.add(i4, aVar2);
                                arrayList.remove(fragment4);
                                i4++;
                                z = z2;
                            }
                            size--;
                            z2 = z;
                        }
                        if (z2) {
                            this.f692b.remove(i4);
                            i4--;
                        } else {
                            aVar.f695a = 1;
                            arrayList.add(fragment2);
                        }
                        i2 = i4;
                        fragment = fragment3;
                        break;
                    case 3:
                    case 6:
                        arrayList.remove(aVar.f696b);
                        if (aVar.f696b == fragment) {
                            this.f692b.add(i2, new a(9, aVar.f696b));
                            i2++;
                            fragment = null;
                        }
                        break;
                    case 8:
                        this.f692b.add(i2, new a(9, fragment));
                        i2++;
                        fragment = aVar.f696b;
                        break;
                }
                i = i2 + 1;
            } else {
                return fragment;
            }
        }
    }

    Fragment b(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f692b.size()) {
                a aVar = this.f692b.get(i2);
                switch (aVar.f695a) {
                    case 1:
                    case 7:
                        arrayList.remove(aVar.f696b);
                        break;
                    case 3:
                    case 6:
                        arrayList.add(aVar.f696b);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = aVar.f696b;
                        break;
                }
                i = i2 + 1;
            } else {
                return fragment;
            }
        }
    }

    boolean g() {
        for (int i = 0; i < this.f692b.size(); i++) {
            if (b(this.f692b.get(i))) {
                return true;
            }
        }
        return false;
    }

    void a(Fragment.c cVar) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f692b.size()) {
                a aVar = this.f692b.get(i2);
                if (b(aVar)) {
                    aVar.f696b.setOnStartEnterTransitionListener(cVar);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static boolean b(a aVar) {
        Fragment fragment = aVar.f696b;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    public String h() {
        return this.k;
    }
}

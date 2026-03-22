package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class j extends androidx.viewpager.widget.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f1725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f1726b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<Fragment.SavedState> f1727c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Fragment> f1728d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Fragment f1729e = null;

    public abstract Fragment a(int i);

    public j(g gVar) {
        this.f1725a = gVar;
    }

    @Override // androidx.viewpager.widget.a
    public void a(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    @Override // androidx.viewpager.widget.a
    public Object a(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f1728d.size() > i && (fragment = this.f1728d.get(i)) != null) {
            return fragment;
        }
        if (this.f1726b == null) {
            this.f1726b = this.f1725a.a();
        }
        Fragment fragmentA = a(i);
        if (this.f1727c.size() > i && (savedState = this.f1727c.get(i)) != null) {
            fragmentA.a(savedState);
        }
        while (this.f1728d.size() <= i) {
            this.f1728d.add(null);
        }
        fragmentA.f(false);
        fragmentA.g(false);
        this.f1728d.set(i, fragmentA);
        this.f1726b.a(viewGroup.getId(), fragmentA);
        return fragmentA;
    }

    @Override // androidx.viewpager.widget.a
    public void a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f1726b == null) {
            this.f1726b = this.f1725a.a();
        }
        while (this.f1727c.size() <= i) {
            this.f1727c.add(null);
        }
        this.f1727c.set(i, fragment.x() ? this.f1725a.a(fragment) : null);
        this.f1728d.set(i, null);
        this.f1726b.a(fragment);
    }

    @Override // androidx.viewpager.widget.a
    public void b(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f1729e;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.f(false);
                this.f1729e.g(false);
            }
            fragment.f(true);
            fragment.g(true);
            this.f1729e = fragment;
        }
    }

    @Override // androidx.viewpager.widget.a
    public void b(ViewGroup viewGroup) {
        k kVar = this.f1726b;
        if (kVar != null) {
            kVar.e();
            this.f1726b = null;
        }
    }

    @Override // androidx.viewpager.widget.a
    public boolean a(View view, Object obj) {
        return ((Fragment) obj).E() == view;
    }

    @Override // androidx.viewpager.widget.a
    public Parcelable a() {
        Bundle bundle;
        if (this.f1727c.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f1727c.size()];
            this.f1727c.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        for (int i = 0; i < this.f1728d.size(); i++) {
            Fragment fragment = this.f1728d.get(i);
            if (fragment != null && fragment.x()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.f1725a.a(bundle, "f" + i, fragment);
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.a
    public void a(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f1727c.clear();
            this.f1728d.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f1727c.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int i = Integer.parseInt(str.substring(1));
                    Fragment fragmentA = this.f1725a.a(bundle, str);
                    if (fragmentA != null) {
                        while (this.f1728d.size() <= i) {
                            this.f1728d.add(null);
                        }
                        fragmentA.f(false);
                        this.f1728d.set(i, fragmentA);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key " + str);
                    }
                }
            }
        }
    }
}

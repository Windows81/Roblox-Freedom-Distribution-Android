package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class o extends android.support.v4.view.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p f752b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<Fragment.SavedState> f753c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Fragment> f754d = new ArrayList<>();
    private Fragment e = null;

    public abstract Fragment a(int i);

    public o(l lVar) {
        this.f751a = lVar;
    }

    @Override // android.support.v4.view.p
    public void a(ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }

    @Override // android.support.v4.view.p
    public Object a(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f754d.size() <= i || (fragment = this.f754d.get(i)) == null) {
            if (this.f752b == null) {
                this.f752b = this.f751a.a();
            }
            Fragment fragmentA = a(i);
            if (this.f753c.size() > i && (savedState = this.f753c.get(i)) != null) {
                fragmentA.setInitialSavedState(savedState);
            }
            while (this.f754d.size() <= i) {
                this.f754d.add(null);
            }
            fragmentA.setMenuVisibility(false);
            fragmentA.setUserVisibleHint(false);
            this.f754d.set(i, fragmentA);
            this.f752b.a(viewGroup.getId(), fragmentA);
            return fragmentA;
        }
        return fragment;
    }

    @Override // android.support.v4.view.p
    public void a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f752b == null) {
            this.f752b = this.f751a.a();
        }
        while (this.f753c.size() <= i) {
            this.f753c.add(null);
        }
        this.f753c.set(i, fragment.isAdded() ? this.f751a.a(fragment) : null);
        this.f754d.set(i, null);
        this.f752b.a(fragment);
    }

    @Override // android.support.v4.view.p
    public void b(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.e) {
            if (this.e != null) {
                this.e.setMenuVisibility(false);
                this.e.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.e = fragment;
        }
    }

    @Override // android.support.v4.view.p
    public void b(ViewGroup viewGroup) {
        if (this.f752b != null) {
            this.f752b.e();
            this.f752b = null;
        }
    }

    @Override // android.support.v4.view.p
    public boolean a(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // android.support.v4.view.p
    public Parcelable a() {
        Bundle bundle = null;
        if (this.f753c.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f753c.size()];
            this.f753c.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        }
        Bundle bundle2 = bundle;
        for (int i = 0; i < this.f754d.size(); i++) {
            Fragment fragment = this.f754d.get(i);
            if (fragment != null && fragment.isAdded()) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                this.f751a.a(bundle2, "f" + i, fragment);
            }
        }
        return bundle2;
    }

    @Override // android.support.v4.view.p
    public void a(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f753c.clear();
            this.f754d.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f753c.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int i = Integer.parseInt(str.substring(1));
                    Fragment fragmentA = this.f751a.a(bundle, str);
                    if (fragmentA != null) {
                        while (this.f754d.size() <= i) {
                            this.f754d.add(null);
                        }
                        fragmentA.setMenuVisibility(false);
                        this.f754d.set(i, fragmentA);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key " + str);
                    }
                }
            }
        }
    }
}

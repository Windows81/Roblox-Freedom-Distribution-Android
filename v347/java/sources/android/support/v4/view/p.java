package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DataSetObservable f1092a = new DataSetObservable();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DataSetObserver f1093b;

    public abstract boolean a(View view, Object obj);

    public abstract int b();

    public void a(ViewGroup viewGroup) {
        a((View) viewGroup);
    }

    public Object a(ViewGroup viewGroup, int i) {
        return a((View) viewGroup, i);
    }

    public void a(ViewGroup viewGroup, int i, Object obj) {
        a((View) viewGroup, i, obj);
    }

    public void b(ViewGroup viewGroup, int i, Object obj) {
        b((View) viewGroup, i, obj);
    }

    public void b(ViewGroup viewGroup) {
        b((View) viewGroup);
    }

    @Deprecated
    public void a(View view) {
    }

    @Deprecated
    public Object a(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    @Deprecated
    public void a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    @Deprecated
    public void b(View view, int i, Object obj) {
    }

    @Deprecated
    public void b(View view) {
    }

    public Parcelable a() {
        return null;
    }

    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    public int a(Object obj) {
        return -1;
    }

    public void a(DataSetObserver dataSetObserver) {
        this.f1092a.registerObserver(dataSetObserver);
    }

    public void b(DataSetObserver dataSetObserver) {
        this.f1092a.unregisterObserver(dataSetObserver);
    }

    void c(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f1093b = dataSetObserver;
        }
    }

    public CharSequence b(int i) {
        return null;
    }

    public float c(int i) {
        return 1.0f;
    }
}

package android.support.transition;

import android.os.IBinder;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class au implements aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f521a;

    au(IBinder iBinder) {
        this.f521a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof au) && ((au) obj).f521a.equals(this.f521a);
    }

    public int hashCode() {
        return this.f521a.hashCode();
    }
}

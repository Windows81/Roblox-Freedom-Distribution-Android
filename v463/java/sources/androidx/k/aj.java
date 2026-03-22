package androidx.k;

import android.os.IBinder;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class aj implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f1957a;

    aj(IBinder iBinder) {
        this.f1957a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof aj) && ((aj) obj).f1957a.equals(this.f1957a);
    }

    public int hashCode() {
        return this.f1957a.hashCode();
    }
}

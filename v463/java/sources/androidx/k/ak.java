package androidx.k;

import android.view.View;
import android.view.WindowId;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class ak implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WindowId f1958a;

    ak(View view) {
        this.f1958a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof ak) && ((ak) obj).f1958a.equals(this.f1958a);
    }

    public int hashCode() {
        return this.f1958a.hashCode();
    }
}

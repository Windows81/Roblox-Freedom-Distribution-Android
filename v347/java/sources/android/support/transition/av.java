package android.support.transition;

import android.view.View;
import android.view.WindowId;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class av implements aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WindowId f522a;

    av(View view) {
        this.f522a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof av) && ((av) obj).f522a.equals(this.f522a);
    }

    public int hashCode() {
        return this.f522a.hashCode();
    }
}

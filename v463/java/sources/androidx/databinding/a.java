package androidx.databinding;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient j f1575a;

    public void a(int i) {
        synchronized (this) {
            if (this.f1575a == null) {
                return;
            }
            this.f1575a.a(this, i, null);
        }
    }
}

package androidx.core.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends RuntimeException {
    public c() {
        this(null);
    }

    public c(String str) {
        super(str == null ? "The operation has been canceled." : str);
    }
}

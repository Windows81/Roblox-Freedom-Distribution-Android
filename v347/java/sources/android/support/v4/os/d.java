package android.support.v4.os;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d extends RuntimeException {
    public d() {
        this(null);
    }

    public d(String str) {
        super(str == null ? "The operation has been canceled." : str);
    }
}

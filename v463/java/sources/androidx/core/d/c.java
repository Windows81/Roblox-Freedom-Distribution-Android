package androidx.core.d;

/* JADX INFO: loaded from: classes.dex */
public class c extends RuntimeException {
    public c() {
        this(null);
    }

    public c(String str) {
        super(str == null ? "The operation has been canceled." : str);
    }
}

package a.a.c;

/* JADX INFO: loaded from: classes.dex */
public enum e {
    NOT_AVAILABLE("NotAvailable"),
    DISABLED("Disabled"),
    ENABLED("Enabled");


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f393d;

    e(String str) {
        this.f393d = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f393d;
    }
}

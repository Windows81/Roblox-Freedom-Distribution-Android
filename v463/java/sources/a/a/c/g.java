package a.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum g {
    NOT_PERMITTED("NotPermitted"),
    DISABLED("Disabled"),
    ENABLED("Enabled");


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f403d;

    g(String str) {
        this.f403d = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f403d;
    }
}

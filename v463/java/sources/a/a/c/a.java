package a.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum a {
    CHARGING("Charging"),
    UNKNOWN("Unknown"),
    FULL("Full"),
    UNPLAGGED("Unplagged");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f372e;

    a(String str) {
        this.f372e = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f372e;
    }
}

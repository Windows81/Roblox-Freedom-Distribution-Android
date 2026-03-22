package a.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum f {
    PORTRAIT("Portrait"),
    LANDSCAPE("Landscape"),
    UNDEFINED("Unknown");


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f398d;

    f(String str) {
        this.f398d = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f398d;
    }
}

package a.a.c;

/* JADX INFO: loaded from: classes.dex */
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

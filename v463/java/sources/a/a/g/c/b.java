package a.a.g.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f458a;

    public b(Integer num, String str) {
        super(str);
        a(num.intValue());
    }

    private void a(int i) {
        this.f458a = Integer.valueOf(i);
    }
}

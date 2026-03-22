package androidx.constraintlayout.a.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f1160a = 0.0f;

    @Override // androidx.constraintlayout.a.a.o
    public void b() {
        super.b();
        this.f1160a = 0.0f;
    }

    public void a(int i) {
        if (this.i == 0 || this.f1160a != i) {
            this.f1160a = i;
            if (this.i == 1) {
                e();
            }
            f();
        }
    }

    public void c() {
        this.i = 2;
    }
}

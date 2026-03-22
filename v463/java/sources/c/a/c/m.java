package c.a.c;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f2616a = new m() { // from class: c.a.c.m.1
        @Override // c.a.c.m
        public void a(int i, a aVar) {
        }

        @Override // c.a.c.m
        public boolean a(int i, List<f> list) {
            return true;
        }

        @Override // c.a.c.m
        public boolean a(int i, List<f> list, boolean z) {
            return true;
        }

        @Override // c.a.c.m
        public boolean a(int i, d.e eVar, int i2, boolean z) throws IOException {
            eVar.h(i2);
            return true;
        }
    };

    void a(int i, a aVar);

    boolean a(int i, d.e eVar, int i2, boolean z) throws IOException;

    boolean a(int i, List<f> list);

    boolean a(int i, List<f> list, boolean z);
}

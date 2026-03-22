package b.a.c;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f1892a = new m() { // from class: b.a.c.m.1
        @Override // b.a.c.m
        public boolean a(int i, List<f> list) {
            return true;
        }

        @Override // b.a.c.m
        public boolean a(int i, List<f> list, boolean z) {
            return true;
        }

        @Override // b.a.c.m
        public boolean a(int i, c.e eVar, int i2, boolean z) throws IOException {
            eVar.h(i2);
            return true;
        }

        @Override // b.a.c.m
        public void a(int i, a aVar) {
        }
    };

    void a(int i, a aVar);

    boolean a(int i, c.e eVar, int i2, boolean z) throws IOException;

    boolean a(int i, List<f> list);

    boolean a(int i, List<f> list, boolean z);
}

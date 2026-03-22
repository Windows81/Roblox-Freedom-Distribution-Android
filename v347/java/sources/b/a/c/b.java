package b.a.c;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface b extends Closeable {

    public interface a {
        void a();

        void a(int i, int i2, int i3, boolean z);

        void a(int i, int i2, List<f> list) throws IOException;

        void a(int i, long j);

        void a(int i, b.a.c.a aVar);

        void a(int i, b.a.c.a aVar, c.f fVar);

        void a(boolean z, int i, int i2);

        void a(boolean z, int i, c.e eVar, int i2) throws IOException;

        void a(boolean z, n nVar);

        void a(boolean z, boolean z2, int i, int i2, List<f> list, g gVar);
    }

    void a() throws IOException;

    boolean a(a aVar) throws IOException;
}

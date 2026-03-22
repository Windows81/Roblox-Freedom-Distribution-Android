package androidx.f.a;

import android.os.Bundle;
import androidx.f.b.c;
import androidx.lifecycle.j;
import androidx.lifecycle.y;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: androidx.f.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0039a<D> {
        c<D> a(int i, Bundle bundle);

        void a(c<D> cVar);

        void a(c<D> cVar, D d2);
    }

    public abstract <D> c<D> a(int i, Bundle bundle, InterfaceC0039a<D> interfaceC0039a);

    public abstract void a();

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract <D> c<D> b(int i, Bundle bundle, InterfaceC0039a<D> interfaceC0039a);

    public static <T extends j & y> a a(T t) {
        return new b(t, t.k());
    }
}

package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class g {

    public static abstract class a {
        public void a(g gVar, Fragment fragment) {
        }

        public void a(g gVar, Fragment fragment, Context context) {
        }

        public void a(g gVar, Fragment fragment, Bundle bundle) {
        }

        public void a(g gVar, Fragment fragment, View view, Bundle bundle) {
        }

        public void b(g gVar, Fragment fragment) {
        }

        public void b(g gVar, Fragment fragment, Context context) {
        }

        public void b(g gVar, Fragment fragment, Bundle bundle) {
        }

        public void c(g gVar, Fragment fragment) {
        }

        public void c(g gVar, Fragment fragment, Bundle bundle) {
        }

        public void d(g gVar, Fragment fragment) {
        }

        public void d(g gVar, Fragment fragment, Bundle bundle) {
        }

        public void e(g gVar, Fragment fragment) {
        }

        public void f(g gVar, Fragment fragment) {
        }

        public void g(g gVar, Fragment fragment) {
        }
    }

    public interface b {
        void a();
    }

    public abstract Fragment.SavedState a(Fragment fragment);

    public abstract Fragment a(int i);

    public abstract Fragment a(Bundle bundle, String str);

    public abstract Fragment a(String str);

    public abstract k a();

    public abstract void a(int i, int i2);

    public abstract void a(Bundle bundle, String str, Fragment fragment);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract boolean b();

    public abstract void c();

    public abstract boolean d();

    public abstract int e();

    public abstract List<Fragment> f();

    public abstract boolean g();
}

package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class l {

    public interface b {
        void a();
    }

    public abstract Fragment.SavedState a(Fragment fragment);

    public abstract Fragment a(Bundle bundle, String str);

    public abstract Fragment a(String str);

    public abstract p a();

    public abstract void a(int i, int i2);

    public abstract void a(Bundle bundle, String str, Fragment fragment);

    public abstract void a(a aVar, boolean z);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract boolean b();

    public abstract void c();

    public abstract boolean d();

    public abstract int e();

    public abstract List<Fragment> f();

    public abstract boolean g();

    public static abstract class a {
        public void a(l lVar, Fragment fragment, Context context) {
        }

        public void b(l lVar, Fragment fragment, Context context) {
        }

        public void b(l lVar, Fragment fragment, Bundle bundle) {
        }

        public void a(l lVar, Fragment fragment, Bundle bundle) {
        }

        public void c(l lVar, Fragment fragment, Bundle bundle) {
        }

        public void a(l lVar, Fragment fragment, View view, Bundle bundle) {
        }

        public void a(l lVar, Fragment fragment) {
        }

        public void b(l lVar, Fragment fragment) {
        }

        public void c(l lVar, Fragment fragment) {
        }

        public void d(l lVar, Fragment fragment) {
        }

        public void d(l lVar, Fragment fragment, Bundle bundle) {
        }

        public void e(l lVar, Fragment fragment) {
        }

        public void f(l lVar, Fragment fragment) {
        }

        public void g(l lVar, Fragment fragment) {
        }
    }
}

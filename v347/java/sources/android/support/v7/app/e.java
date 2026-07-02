package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f1228a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1229b = false;

    public abstract a a();

    public abstract <T extends View> T a(int i);

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle bundle);

    public abstract void a(Toolbar toolbar);

    public abstract void a(View view);

    public abstract void a(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void a(CharSequence charSequence);

    public abstract MenuInflater b();

    public abstract void b(int i);

    public abstract void b(Bundle bundle);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void c();

    public abstract void c(Bundle bundle);

    public abstract boolean c(int i);

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract void h();

    public abstract boolean i();

    public static e a(Activity activity, d dVar) {
        return a(activity, activity.getWindow(), dVar);
    }

    public static e a(Dialog dialog, d dVar) {
        return a(dialog.getContext(), dialog.getWindow(), dVar);
    }

    private static e a(Context context, Window window, d dVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new g(context, window, dVar);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return new j(context, window, dVar);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            return new i(context, window, dVar);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            return new h(context, window, dVar);
        }
        return new k(context, window, dVar);
    }

    e() {
    }

    public static int j() {
        return f1228a;
    }

    public static boolean k() {
        return f1229b;
    }
}

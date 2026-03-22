package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class f<E> extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f1678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final h f1679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f1680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f1681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1682e;

    @Override // androidx.fragment.app.d
    public View a(int i) {
        return null;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // androidx.fragment.app.d
    public boolean a() {
        return true;
    }

    public boolean a(Fragment fragment) {
        return true;
    }

    void b(Fragment fragment) {
    }

    public void c() {
    }

    public boolean d() {
        return true;
    }

    f(c cVar) {
        this(cVar, cVar, cVar.f1667a, 0);
    }

    f(Activity activity, Context context, Handler handler, int i) {
        this.f1679b = new h();
        this.f1678a = activity;
        this.f1680c = (Context) androidx.core.g.e.a(context, "context == null");
        this.f1681d = (Handler) androidx.core.g.e.a(handler, "handler == null");
        this.f1682e = i;
    }

    public LayoutInflater b() {
        return LayoutInflater.from(this.f1680c);
    }

    public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.f1680c.startActivity(intent);
    }

    public void a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        androidx.core.app.a.a(this.f1678a, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public int e() {
        return this.f1682e;
    }

    Activity f() {
        return this.f1678a;
    }

    Context g() {
        return this.f1680c;
    }

    Handler h() {
        return this.f1681d;
    }

    h i() {
        return this.f1679b;
    }
}

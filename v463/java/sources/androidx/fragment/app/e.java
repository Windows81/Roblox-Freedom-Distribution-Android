package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f<?> f1677a;

    public static e a(f<?> fVar) {
        return new e(fVar);
    }

    private e(f<?> fVar) {
        this.f1677a = fVar;
    }

    public g a() {
        return this.f1677a.i();
    }

    public Fragment a(String str) {
        return this.f1677a.f1679b.b(str);
    }

    public void a(Fragment fragment) {
        h hVar = this.f1677a.f1679b;
        f<?> fVar = this.f1677a;
        hVar.a(fVar, fVar, fragment);
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f1677a.f1679b.onCreateView(view, str, context, attributeSet);
    }

    public void b() {
        this.f1677a.f1679b.p();
    }

    public Parcelable c() {
        return this.f1677a.f1679b.o();
    }

    public void a(Parcelable parcelable, i iVar) {
        this.f1677a.f1679b.a(parcelable, iVar);
    }

    public i d() {
        return this.f1677a.f1679b.m();
    }

    public void e() {
        this.f1677a.f1679b.q();
    }

    public void f() {
        this.f1677a.f1679b.r();
    }

    public void g() {
        this.f1677a.f1679b.s();
    }

    public void h() {
        this.f1677a.f1679b.t();
    }

    public void i() {
        this.f1677a.f1679b.u();
    }

    public void j() {
        this.f1677a.f1679b.v();
    }

    public void k() {
        this.f1677a.f1679b.x();
    }

    public void a(boolean z) {
        this.f1677a.f1679b.a(z);
    }

    public void b(boolean z) {
        this.f1677a.f1679b.b(z);
    }

    public void a(Configuration configuration) {
        this.f1677a.f1679b.a(configuration);
    }

    public void l() {
        this.f1677a.f1679b.y();
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        return this.f1677a.f1679b.a(menu, menuInflater);
    }

    public boolean a(Menu menu) {
        return this.f1677a.f1679b.a(menu);
    }

    public boolean a(MenuItem menuItem) {
        return this.f1677a.f1679b.a(menuItem);
    }

    public boolean b(MenuItem menuItem) {
        return this.f1677a.f1679b.b(menuItem);
    }

    public void b(Menu menu) {
        this.f1677a.f1679b.b(menu);
    }

    public boolean m() {
        return this.f1677a.f1679b.j();
    }
}

package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<?> f712a;

    public static final j a(k<?> kVar) {
        return new j(kVar);
    }

    private j(k<?> kVar) {
        this.f712a = kVar;
    }

    public l a() {
        return this.f712a.k();
    }

    public Fragment a(String str) {
        return this.f712a.f716d.b(str);
    }

    public void a(Fragment fragment) {
        this.f712a.f716d.a(this.f712a, this.f712a, fragment);
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f712a.f716d.onCreateView(view, str, context, attributeSet);
    }

    public void b() {
        this.f712a.f716d.o();
    }

    public Parcelable c() {
        return this.f712a.f716d.n();
    }

    public void a(Parcelable parcelable, n nVar) {
        this.f712a.f716d.a(parcelable, nVar);
    }

    public n d() {
        return this.f712a.f716d.l();
    }

    public void e() {
        this.f712a.f716d.p();
    }

    public void f() {
        this.f712a.f716d.q();
    }

    public void g() {
        this.f712a.f716d.r();
    }

    public void h() {
        this.f712a.f716d.s();
    }

    public void i() {
        this.f712a.f716d.t();
    }

    public void j() {
        this.f712a.f716d.u();
    }

    public void k() {
        this.f712a.f716d.v();
    }

    public void l() {
        this.f712a.f716d.x();
    }

    public void a(boolean z) {
        this.f712a.f716d.a(z);
    }

    public void b(boolean z) {
        this.f712a.f716d.b(z);
    }

    public void a(Configuration configuration) {
        this.f712a.f716d.a(configuration);
    }

    public void m() {
        this.f712a.f716d.y();
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        return this.f712a.f716d.a(menu, menuInflater);
    }

    public boolean a(Menu menu) {
        return this.f712a.f716d.a(menu);
    }

    public boolean a(MenuItem menuItem) {
        return this.f712a.f716d.a(menuItem);
    }

    public boolean b(MenuItem menuItem) {
        return this.f712a.f716d.b(menuItem);
    }

    public void b(Menu menu) {
        this.f712a.f716d.b(menu);
    }

    public boolean n() {
        return this.f712a.f716d.i();
    }

    public void o() {
        this.f712a.m();
    }

    public void c(boolean z) {
        this.f712a.a(z);
    }

    public void p() {
        this.f712a.n();
    }

    public void q() {
        this.f712a.o();
    }

    public android.support.v4.g.m<String, v> r() {
        return this.f712a.p();
    }

    public void a(android.support.v4.g.m<String, v> mVar) {
        this.f712a.a(mVar);
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f712a.b(str, fileDescriptor, printWriter, strArr);
    }
}

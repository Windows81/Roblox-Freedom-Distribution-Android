package androidx.fragment.app;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1662a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1663b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f1664c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1665d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1666e = -1;
    Dialog f;
    boolean g;
    boolean h;
    boolean i;

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    public void a(int i, int i2) {
        this.f1662a = i;
        if (i == 2 || i == 3) {
            this.f1663b = R.style.Theme.Panel;
        }
        if (i2 != 0) {
            this.f1663b = i2;
        }
    }

    public void a(g gVar, String str) {
        this.h = false;
        this.i = true;
        k kVarA = gVar.a();
        kVarA.a(this, str);
        kVarA.c();
    }

    public void a() {
        a(false);
    }

    public void b() {
        a(true);
    }

    void a(boolean z) {
        if (this.h) {
            return;
        }
        this.h = true;
        this.i = false;
        Dialog dialog = this.f;
        if (dialog != null) {
            dialog.dismiss();
        }
        this.g = true;
        if (this.f1666e >= 0) {
            t().a(this.f1666e, 1);
            this.f1666e = -1;
            return;
        }
        k kVarA = t().a();
        kVarA.a(this);
        if (z) {
            kVarA.d();
        } else {
            kVarA.c();
        }
    }

    public Dialog c() {
        return this.f;
    }

    public int d() {
        return this.f1663b;
    }

    public void b(boolean z) {
        this.f1664c = z;
        Dialog dialog = this.f;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void c(boolean z) {
        this.f1665d = z;
    }

    public boolean e() {
        return this.f1665d;
    }

    @Override // androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (this.i) {
            return;
        }
        this.h = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void f() {
        super.f();
        if (this.i || this.h) {
            return;
        }
        this.h = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f1665d = this.I == 0;
        if (bundle != null) {
            this.f1662a = bundle.getInt("android:style", 0);
            this.f1663b = bundle.getInt("android:theme", 0);
            this.f1664c = bundle.getBoolean("android:cancelable", true);
            this.f1665d = bundle.getBoolean("android:showsDialog", this.f1665d);
            this.f1666e = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater c(Bundle bundle) {
        if (!this.f1665d) {
            return super.c(bundle);
        }
        Dialog dialogA = a(bundle);
        this.f = dialogA;
        if (dialogA != null) {
            a(dialogA, this.f1662a);
            return (LayoutInflater) this.f.getContext().getSystemService("layout_inflater");
        }
        return (LayoutInflater) this.C.g().getSystemService("layout_inflater");
    }

    public void a(Dialog dialog, int i) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            } else {
                dialog.getWindow().addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    public Dialog a(Bundle bundle) {
        return new Dialog(r(), d());
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.g) {
            return;
        }
        a(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        Bundle bundle2;
        super.d(bundle);
        if (this.f1665d) {
            View viewE = E();
            if (viewE != null) {
                if (viewE.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                this.f.setContentView(viewE);
            }
            c cVarR = r();
            if (cVarR != null) {
                this.f.setOwnerActivity(cVarR);
            }
            this.f.setCancelable(this.f1664c);
            this.f.setOnCancelListener(this);
            this.f.setOnDismissListener(this);
            if (bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
                return;
            }
            this.f.onRestoreInstanceState(bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void h() {
        super.h();
        Dialog dialog = this.f;
        if (dialog != null) {
            this.g = false;
            dialog.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void e(Bundle bundle) {
        Bundle bundleOnSaveInstanceState;
        super.e(bundle);
        Dialog dialog = this.f;
        if (dialog != null && (bundleOnSaveInstanceState = dialog.onSaveInstanceState()) != null) {
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i = this.f1662a;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f1663b;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.f1664c;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f1665d;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.f1666e;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void i() {
        super.i();
        Dialog dialog = this.f;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void j() {
        super.j();
        Dialog dialog = this.f;
        if (dialog != null) {
            this.g = true;
            dialog.dismiss();
            this.f = null;
        }
    }
}

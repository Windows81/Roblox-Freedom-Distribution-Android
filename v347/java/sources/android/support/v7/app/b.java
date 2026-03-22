package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.app.AlertController;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends l implements DialogInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AlertController f1225a;

    protected b(Context context, int i) {
        super(context, a(context, i));
        this.f1225a = new AlertController(getContext(), this, getWindow());
    }

    static int a(Context context, int i) {
        if (((i >>> 24) & 255) < 1) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(a.C0032a.alertDialogTheme, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    public Button a(int i) {
        return this.f1225a.d(i);
    }

    @Override // android.support.v7.app.l, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f1225a.a(charSequence);
    }

    public void a(CharSequence charSequence) {
        this.f1225a.b(charSequence);
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        this.f1225a.a(view, i, i2, i3, i4);
    }

    @Override // android.support.v7.app.l, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1225a.a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f1225a.a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f1225a.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AlertController.a f1226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1227b;

        public a(Context context) {
            this(context, b.a(context, 0));
        }

        public a(Context context, int i) {
            this.f1226a = new AlertController.a(new ContextThemeWrapper(context, b.a(context, i)));
            this.f1227b = i;
        }

        public Context a() {
            return this.f1226a.f1209a;
        }

        public a a(int i) {
            this.f1226a.f = this.f1226a.f1209a.getText(i);
            return this;
        }

        public a a(CharSequence charSequence) {
            this.f1226a.f = charSequence;
            return this;
        }

        public a a(View view) {
            this.f1226a.g = view;
            return this;
        }

        public a b(int i) {
            this.f1226a.h = this.f1226a.f1209a.getText(i);
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f1226a.h = charSequence;
            return this;
        }

        public a a(Drawable drawable) {
            this.f1226a.f1212d = drawable;
            return this;
        }

        public a a(int i, DialogInterface.OnClickListener onClickListener) {
            this.f1226a.i = this.f1226a.f1209a.getText(i);
            this.f1226a.j = onClickListener;
            return this;
        }

        public a b(int i, DialogInterface.OnClickListener onClickListener) {
            this.f1226a.k = this.f1226a.f1209a.getText(i);
            this.f1226a.l = onClickListener;
            return this;
        }

        public a c(int i, DialogInterface.OnClickListener onClickListener) {
            this.f1226a.m = this.f1226a.f1209a.getText(i);
            this.f1226a.n = onClickListener;
            return this;
        }

        public a a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f1226a.m = charSequence;
            this.f1226a.n = onClickListener;
            return this;
        }

        public a a(boolean z) {
            this.f1226a.o = z;
            return this;
        }

        public a a(DialogInterface.OnCancelListener onCancelListener) {
            this.f1226a.p = onCancelListener;
            return this;
        }

        public a a(DialogInterface.OnDismissListener onDismissListener) {
            this.f1226a.q = onDismissListener;
            return this;
        }

        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f1226a.r = onKeyListener;
            return this;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f1226a.t = listAdapter;
            this.f1226a.u = onClickListener;
            return this;
        }

        public b b() {
            b bVar = new b(this.f1226a.f1209a, this.f1227b);
            this.f1226a.a(bVar.f1225a);
            bVar.setCancelable(this.f1226a.o);
            if (this.f1226a.o) {
                bVar.setCanceledOnTouchOutside(true);
            }
            bVar.setOnCancelListener(this.f1226a.p);
            bVar.setOnDismissListener(this.f1226a.q);
            if (this.f1226a.r != null) {
                bVar.setOnKeyListener(this.f1226a.r);
            }
            return bVar;
        }

        public b c() {
            b bVarB = b();
            bVarB.show();
            return bVarB;
        }
    }
}

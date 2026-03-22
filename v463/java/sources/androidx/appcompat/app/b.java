package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import androidx.appcompat.a;
import androidx.appcompat.app.AlertController;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends g implements DialogInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AlertController f630a;

    protected b(Context context, int i) {
        super(context, a(context, i));
        this.f630a = new AlertController(getContext(), this, getWindow());
    }

    static int a(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.C0012a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button a(int i) {
        return this.f630a.d(i);
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f630a.a(charSequence);
    }

    public void a(CharSequence charSequence) {
        this.f630a.b(charSequence);
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        this.f630a.a(view, i, i2, i3, i4);
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f630a.a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f630a.a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f630a.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AlertController.a f631a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f632b;

        public a(Context context) {
            this(context, b.a(context, 0));
        }

        public a(Context context, int i) {
            this.f631a = new AlertController.a(new ContextThemeWrapper(context, b.a(context, i)));
            this.f632b = i;
        }

        public Context a() {
            return this.f631a.f608a;
        }

        public a a(int i) {
            AlertController.a aVar = this.f631a;
            aVar.f = aVar.f608a.getText(i);
            return this;
        }

        public a a(CharSequence charSequence) {
            this.f631a.f = charSequence;
            return this;
        }

        public a a(View view) {
            this.f631a.g = view;
            return this;
        }

        public a b(int i) {
            AlertController.a aVar = this.f631a;
            aVar.h = aVar.f608a.getText(i);
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f631a.h = charSequence;
            return this;
        }

        public a a(Drawable drawable) {
            this.f631a.f611d = drawable;
            return this;
        }

        public a a(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f631a;
            aVar.i = aVar.f608a.getText(i);
            this.f631a.k = onClickListener;
            return this;
        }

        public a a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f631a.i = charSequence;
            this.f631a.k = onClickListener;
            return this;
        }

        public a b(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f631a;
            aVar.l = aVar.f608a.getText(i);
            this.f631a.n = onClickListener;
            return this;
        }

        public a b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f631a.l = charSequence;
            this.f631a.n = onClickListener;
            return this;
        }

        public a c(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f631a;
            aVar.o = aVar.f608a.getText(i);
            this.f631a.q = onClickListener;
            return this;
        }

        public a c(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f631a.o = charSequence;
            this.f631a.q = onClickListener;
            return this;
        }

        public a a(boolean z) {
            this.f631a.r = z;
            return this;
        }

        public a a(DialogInterface.OnCancelListener onCancelListener) {
            this.f631a.s = onCancelListener;
            return this;
        }

        public a a(DialogInterface.OnDismissListener onDismissListener) {
            this.f631a.t = onDismissListener;
            return this;
        }

        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f631a.u = onKeyListener;
            return this;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f631a.w = listAdapter;
            this.f631a.x = onClickListener;
            return this;
        }

        public b b() {
            b bVar = new b(this.f631a.f608a, this.f632b);
            this.f631a.a(bVar.f630a);
            bVar.setCancelable(this.f631a.r);
            if (this.f631a.r) {
                bVar.setCanceledOnTouchOutside(true);
            }
            bVar.setOnCancelListener(this.f631a.s);
            bVar.setOnDismissListener(this.f631a.t);
            if (this.f631a.u != null) {
                bVar.setOnKeyListener(this.f631a.u);
            }
            return bVar;
        }
    }
}

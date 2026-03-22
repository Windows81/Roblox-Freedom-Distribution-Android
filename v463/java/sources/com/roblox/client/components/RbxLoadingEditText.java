package com.roblox.client.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxLoadingEditText extends RbxEditText {
    protected ProgressBar g;

    public RbxLoadingEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setup(context);
    }

    public void f() {
        a(o.j.CommonUI_Messages_Response_CheckingMessage);
        this.f5791b.addView(this.g, 0);
    }

    @Override // com.roblox.client.components.RbxEditText
    public void a(String str) {
        super.a(str);
        g();
    }

    @Override // com.roblox.client.components.RbxEditText
    public void b(String str) {
        super.b(str);
        g();
    }

    private void setup(Context context) {
        ProgressBar progressBar = (ProgressBar) inflate(context, o.g.include_rbx_progress_bar, null);
        this.g = progressBar;
        progressBar.setIndeterminateDrawable(a(context, o.e.rbx_spinner_loading_edittext));
    }

    protected void g() {
        View childAt = this.f5791b.getChildAt(0);
        if (childAt instanceof ProgressBar) {
            this.f5791b.removeView(childAt);
        }
    }
}

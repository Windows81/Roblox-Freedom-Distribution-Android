package com.roblox.client.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import com.roblox.client.R;

/* JADX INFO: loaded from: classes.dex */
public class RbxLoadingEditText extends RbxEditText {
    protected ProgressBar e;

    public RbxLoadingEditText(Context context) {
        super(context);
        setup(context);
    }

    public RbxLoadingEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setup(context);
    }

    public void f() {
        b(R.string.CommonUI_Messages_Response_CheckingMessage);
        this.f6676b.addView(this.e, 0);
    }

    @Override // com.roblox.client.components.RbxEditText
    public void b(String str) {
        super.b(str);
        g();
    }

    @Override // com.roblox.client.components.RbxEditText
    public void a(String str) {
        super.a(str);
        g();
    }

    private void setup(Context context) {
        this.e = (ProgressBar) inflate(context, R.layout.include_rbx_progress_bar, null);
        this.e.setIndeterminateDrawable(a(context, R.drawable.rbx_spinner_loading_edittext));
    }

    protected void g() {
        View childAt = this.f6676b.getChildAt(0);
        if (childAt instanceof ProgressBar) {
            this.f6676b.removeView(childAt);
        }
    }
}

package com.roblox.client.components;

import android.content.Context;
import android.support.v7.widget.AppCompatCheckBox;
import android.util.AttributeSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RbxCheckBox extends AppCompatCheckBox {
    public RbxCheckBox(Context context) {
        super(context);
    }

    public RbxCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m.a(this, context, attributeSet);
    }

    public RbxCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m.a(this, context, attributeSet);
    }

    public void a() {
        startAnimation(l.a(this));
        setEnabled(false);
    }

    public void b() {
        startAnimation(l.b(this));
        setEnabled(true);
    }
}

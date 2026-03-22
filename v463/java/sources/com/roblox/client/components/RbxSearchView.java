package com.roblox.client.components;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.SearchView;
import android.widget.TextView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxSearchView extends SearchView {
    public RbxSearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TextView textView = (TextView) findViewById(getContext().getResources().getIdentifier("android:id/search_src_text", null, null));
        if (textView != null) {
            h.a(textView, context, attributeSet);
        }
    }
}

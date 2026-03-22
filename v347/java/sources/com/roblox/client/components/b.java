package com.roblox.client.components;

import android.text.InputFilter;
import android.text.Spanned;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b implements InputFilter {
    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        return a(charSequence, i, i2, spanned, i3, i4);
    }

    public CharSequence a(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = null;
        while (i < i2) {
            int type = Character.getType(charSequence.charAt(i));
            if (type == 19 || type == 28) {
                if (sb == null) {
                    sb = new StringBuilder();
                    if (i - 1 > 0) {
                        sb.append(charSequence.subSequence(0, i - 1));
                    }
                }
            } else if (sb != null) {
                sb.append(charSequence.charAt(i));
            }
            i++;
        }
        return sb;
    }
}

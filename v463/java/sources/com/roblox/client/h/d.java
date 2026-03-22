package com.roblox.client.h;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.phonenumber.PhonePrefix;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends c {
    private static final ViewDataBinding.b f = null;
    private static final SparseIntArray g = null;
    private final ConstraintLayout h;
    private long i;

    public d(e eVar, View view) {
        this(eVar, view, a(eVar, view, 3, f, g));
    }

    private d(e eVar, View view, Object[] objArr) {
        super(eVar, view, 0, (RbxTextView) objArr[2], (RbxTextView) objArr[1]);
        this.i = -1L;
        this.f6321c.setTag(null);
        this.f6322d.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.h = constraintLayout;
        constraintLayout.setTag(null);
        a(view);
        i();
    }

    public void i() {
        synchronized (this) {
            this.i = 2L;
        }
        e();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean c() {
        synchronized (this) {
            return this.i != 0;
        }
    }

    @Override // com.roblox.client.h.c
    public void a(PhonePrefix phonePrefix) {
        this.f6323e = phonePrefix;
        synchronized (this) {
            this.i |= 1;
        }
        a(com.roblox.client.c.f5747a);
        super.e();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void b() {
        long j;
        String str;
        synchronized (this) {
            j = this.i;
            this.i = 0L;
        }
        PhonePrefix phonePrefix = this.f6323e;
        long j2 = j & 3;
        String str2 = null;
        if (j2 != 0) {
            if (phonePrefix != null) {
                String str3 = phonePrefix.localizedCountryName;
                str2 = phonePrefix.prefix;
                str = str3;
            } else {
                str = null;
            }
            str2 = '+' + str2;
        } else {
            str = null;
        }
        if (j2 != 0) {
            androidx.databinding.a.b.a(this.f6321c, str2);
            androidx.databinding.a.b.a(this.f6322d, str);
        }
    }
}

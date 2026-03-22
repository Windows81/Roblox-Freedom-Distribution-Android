package com.roblox.client.h;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import com.roblox.client.o;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends a {
    private static final ViewDataBinding.b j = null;
    private static final SparseIntArray k;
    private final ConstraintLayout l;
    private long m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        k = sparseIntArray;
        sparseIntArray.put(o.f.nearby_user_img_layout, 6);
    }

    public b(e eVar, View view) {
        this(eVar, view, a(eVar, view, 7, j, k));
    }

    private b(e eVar, View view, Object[] objArr) {
        super(eVar, view, 0, (ImageView) objArr[3], (CircleImageView) objArr[2], (RelativeLayout) objArr[6], (CircleImageView) objArr[1], (TextView) objArr[5], (TextView) objArr[4]);
        this.m = -1L;
        a(com.roblox.client.friends.nearby.a.a.a.class);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.l = constraintLayout;
        constraintLayout.setTag(null);
        this.f6318c.setTag(null);
        this.f6319d.setTag(null);
        this.f.setTag(null);
        this.g.setTag(null);
        this.h.setTag(null);
        a(view);
        i();
    }

    public void i() {
        synchronized (this) {
            this.m = 2L;
        }
        e();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean c() {
        synchronized (this) {
            return this.m != 0;
        }
    }

    @Override // com.roblox.client.h.a
    public void a(com.roblox.client.friends.nearby.b.a.a aVar) {
        this.i = aVar;
        synchronized (this) {
            this.m |= 1;
        }
        a(com.roblox.client.c.f5748b);
        super.e();
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0148  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void b() {
        /*
            Method dump skipped, instruction units count: 423
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.h.b.b():void");
    }
}

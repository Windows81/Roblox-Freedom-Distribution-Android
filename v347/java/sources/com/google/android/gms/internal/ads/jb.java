package com.google.android.gms.internal.ads;

import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class jb {
    private static final Comparator<byte[]> e = new kc();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<byte[]> f5167a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<byte[]> f5168b = new ArrayList(64);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5169c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5170d = RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT;

    public jb(int i) {
    }

    private final synchronized void a() {
        while (this.f5169c > this.f5170d) {
            byte[] bArrRemove = this.f5167a.remove(0);
            this.f5168b.remove(bArrRemove);
            this.f5169c -= bArrRemove.length;
        }
    }

    public final synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f5170d) {
                this.f5167a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f5168b, bArr, e);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f5168b.add(iBinarySearch, bArr);
                this.f5169c += bArr.length;
                a();
            }
        }
    }

    public final synchronized byte[] a(int i) {
        byte[] bArr;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f5168b.size()) {
                bArr = new byte[i];
                break;
            }
            bArr = this.f5168b.get(i3);
            if (bArr.length >= i) {
                this.f5169c -= bArr.length;
                this.f5168b.remove(i3);
                this.f5167a.remove(bArr);
                break;
            }
            i2 = i3 + 1;
        }
        return bArr;
    }
}

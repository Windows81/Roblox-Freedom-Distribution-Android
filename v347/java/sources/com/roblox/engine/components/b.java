package com.roblox.engine.components;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.WindowManager;
import com.roblox.platform.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {
    private static boolean g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Rect f7967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7970d;
    public boolean e;
    public int f;

    public b(Rect rect, int i, int i2, int i3, boolean z, int i4) {
        this.f7967a = rect;
        this.f7968b = i;
        this.f7969c = i2;
        this.f7970d = i3;
        this.e = z;
        this.f = i4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (bVar.f7967a.equals(this.f7967a) && bVar.f7968b == this.f7968b && bVar.f7969c == this.f7969c && bVar.f7970d == this.f7970d && bVar.e == this.e && bVar.f == this.f) {
                return true;
            }
        }
        return false;
    }

    public static b a(View view, WindowManager windowManager, View view2, View view3) {
        boolean z = false;
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        a("getScreenDimensionInfo() sr:" + rect.toString());
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        a("getScreenDimensionInfo() ss:" + point.toString());
        int height = view.getHeight();
        a("getScreenDimensionInfo() sh:" + height);
        int i = height - rect.bottom;
        a("getScreenDimensionInfo() bm:" + i);
        int i2 = height - point.y;
        a("getScreenDimensionInfo() sbh:" + i2);
        int iMin = Math.min(i, i2);
        a("getScreenDimensionInfo() rsbh:" + iMin);
        int iMax = Math.max(0, i - i2);
        a("getScreenDimensionInfo() kbh:" + iMax);
        if (view2 != null && view2.getVisibility() == 0) {
            z = true;
        }
        int[] iArr = new int[2];
        if (view3 != null) {
            view3.getLocationInWindow(iArr);
        }
        return new b(rect, height, iMin, iMax, z, iArr[1]);
    }

    private static void a(String str) {
        if (g) {
            d.a("rbx.screen", str);
        }
    }
}

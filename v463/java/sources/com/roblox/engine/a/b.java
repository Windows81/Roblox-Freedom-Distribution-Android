package com.roblox.engine.a;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import com.roblox.platform.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    private static boolean h = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Rect f7584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7588e;
    public int f;
    public int g;

    public b(Rect rect, int i, int i2, int i3, int i4, int i5, int i6) {
        this.f7584a = rect;
        this.f7585b = i;
        this.f7586c = i2;
        this.f7587d = i3;
        this.f7588e = i4;
        this.f = i5;
        this.g = i6;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return bVar.f7584a.equals(this.f7584a) && bVar.f7585b == this.f7585b && bVar.f7586c == this.f7586c && bVar.f7587d == this.f7587d && bVar.f7588e == this.f7588e && bVar.f == this.f && bVar.g == this.g;
    }

    public static b a(View view, WindowManager windowManager, View view2, Rect rect) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        a("getScreenDimensionInfo() ------ start ------");
        Rect rect2 = new Rect();
        view.getWindowVisibleDisplayFrame(rect2);
        a("getScreenDimensionInfo() sr:" + rect2.toString());
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        a("getScreenDimensionInfo() ss:" + point.toString());
        int height = view.getHeight();
        int width = view.getWidth();
        if (com.roblox.engine.a.e() || Build.VERSION.SDK_INT < 21) {
            i = 0;
            i2 = 0;
        } else {
            Point point2 = new Point();
            windowManager.getDefaultDisplay().getRealSize(point2);
            i = point2.y;
            i2 = point2.x;
        }
        a("getScreenDimensionInfo() sh1:" + height + " sh2:" + i);
        if (height > i) {
            i3 = height;
        } else {
            width = i2;
            i3 = i;
        }
        a("getScreenDimensionInfo() sh:" + i3);
        if (Build.VERSION.SDK_INT >= 21 && rect != null) {
            i4 = rect.bottom;
        } else {
            i4 = i3 - rect2.bottom;
        }
        a("getScreenDimensionInfo() bm:" + i4);
        int i7 = i3 - point.y;
        a("getScreenDimensionInfo() sbh:" + i7);
        if (Build.VERSION.SDK_INT >= 21 && rect != null) {
            i5 = rect.top;
        } else {
            int[] iArr = new int[2];
            if (view2 != null) {
                view2.getLocationInWindow(iArr);
            }
            i5 = iArr[1];
        }
        int i8 = i5;
        a("getScreenDimensionInfo() top:" + i8);
        int i9 = rect2.bottom;
        if (com.roblox.engine.a.d() && i8 < rect2.top) {
            a("getScreenDimensionInfo() adjusting top margin");
            i9 -= rect2.top;
            i7 -= rect2.top;
        }
        int i10 = i9;
        a("getScreenDimensionInfo() kby:" + i10);
        if (Build.VERSION.SDK_INT >= 21 && rect != null) {
            i6 = rect.right;
        } else {
            i6 = width - point.x;
        }
        a("getScreenDimensionInfo() rsbw:" + i6);
        int iMin = com.roblox.engine.a.e() ? 0 : Math.min(i4, i7);
        a("getScreenDimensionInfo() rsbh:" + iMin);
        int iMax = Math.max(0, i4 - i7);
        a("getScreenDimensionInfo() kbh:" + iMax);
        return new b(rect2, i3, iMin, i6, iMax, i10, i8);
    }

    private static void a(String str) {
        if (h) {
            e.a("rbx.screen", str);
        }
    }
}

package com.roblox.client.game;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import com.roblox.client.game.b;
import com.roblox.client.u;
import com.roblox.client.x;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.engine.e f6268b = new com.roblox.engine.e();

    public e(Context context) {
        this.f6267a = context;
    }

    public com.roblox.engine.jni.model.c a() {
        String strC = com.roblox.engine.f.c();
        if (TextUtils.isEmpty(strC)) {
            strC = com.roblox.engine.f.a().c(this.f6267a);
        }
        com.roblox.client.ae.k.c("DataModelParamsCreator", "getPlatformParams: assetFolderPath = " + strC);
        com.roblox.engine.jni.model.c cVar = new com.roblox.engine.jni.model.c();
        cVar.assetFolderPath = strC;
        cVar.isTouchDevice = this.f6267a.getPackageManager().hasSystemFeature("android.hardware.touchscreen");
        cVar.isMouseDevice = this.f6267a.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        cVar.isKeyboardDevice = this.f6267a.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        cVar.dpiScale = c();
        return cVar;
    }

    public com.roblox.engine.jni.model.b b() {
        com.roblox.engine.jni.model.b bVar = new com.roblox.engine.jni.model.b();
        bVar.osVersion = Integer.toString(Build.VERSION.SDK_INT);
        bVar.deviceName = com.roblox.client.k.a();
        bVar.appVersion = u.h();
        Locale localeC = com.roblox.client.locale.b.a().c();
        bVar.country = localeC != null ? localeC.getCountry() : "";
        bVar.manufacturer = Build.MANUFACTURER;
        bVar.deviceTotalMemoryMB = com.roblox.platform.a.a.a();
        Point pointA = x.a(this.f6267a);
        bVar.displayResolution = pointA.x + "x" + pointA.y;
        bVar.networkType = x.d(this.f6267a);
        return bVar;
    }

    public float c() {
        return this.f6268b.a(this.f6267a);
    }

    public static b.a a(Context context) {
        e eVar = new e(context);
        com.roblox.engine.jni.model.a aVar = new com.roblox.engine.jni.model.a(eVar.a());
        aVar.isLuaHomePageEnabled = com.roblox.client.x.c.b();
        aVar.isLuaGamesPageEnabled = com.roblox.client.x.c.c();
        aVar.isLuaChatEnabled = com.roblox.client.x.c.a();
        aVar.isTablet = u.i();
        com.roblox.engine.jni.model.b bVarB = eVar.b();
        b.a aVar2 = new b.a();
        aVar2.f6247a = aVar;
        aVar2.f6248b = bVarB;
        aVar2.f6249c = com.roblox.client.x.c.e();
        aVar2.f6250d = com.roblox.client.x.c.f();
        aVar2.f6251e = com.roblox.client.ad.c.a().d();
        aVar2.f = com.roblox.client.ad.c.a().i();
        aVar2.g = com.roblox.client.ad.c.a().e();
        aVar2.h = com.roblox.client.ad.c.a().k();
        aVar2.i = com.roblox.client.ad.c.a().l();
        return aVar2;
    }
}

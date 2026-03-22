package com.roblox.client;

import android.widget.Toast;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityProtocolLaunch extends q {
    private final com.roblox.client.game.i q = l.a().h();

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:13:0x0048
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(android.os.Bundle r14) {
        /*
            r13 = this;
            super.onCreate(r14)
            android.content.Intent r14 = r13.getIntent()
            java.lang.String r14 = r14.getDataString()
            boolean r0 = com.roblox.engine.jni.NativeAppBridgeInterface.isInAppLinksLoaded()
            if (r0 == 0) goto L17
            boolean r0 = com.roblox.engine.jni.NativeAppBridgeInterface.checkInAppLink(r14)
            if (r0 == 0) goto L1e
        L17:
            com.roblox.client.routing.a r0 = com.roblox.client.routing.a.a()
            r0.b(r14)
        L1e:
            android.content.Intent r14 = r13.getIntent()
            java.util.HashMap r14 = com.roblox.client.game.k.a(r14)
            r0 = 0
            r1 = -1
            int r3 = r14.size()     // Catch: java.lang.NumberFormatException -> L48
            r4 = 1
            if (r3 != r4) goto L3b
            java.lang.Object r3 = r14.get(r0)     // Catch: java.lang.NumberFormatException -> L48
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.NumberFormatException -> L48
            long r3 = java.lang.Long.parseLong(r3)     // Catch: java.lang.NumberFormatException -> L48
            goto L49
        L3b:
            java.lang.String r3 = "placeid"
            java.lang.Object r3 = r14.get(r3)     // Catch: java.lang.NumberFormatException -> L48
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.NumberFormatException -> L48
            long r3 = java.lang.Long.parseLong(r3)     // Catch: java.lang.NumberFormatException -> L48
            goto L49
        L48:
            r3 = r1
        L49:
            java.lang.String r5 = "userid"
            java.lang.Object r5 = r14.get(r5)     // Catch: java.lang.NumberFormatException -> L56
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.NumberFormatException -> L56
            long r5 = java.lang.Long.parseLong(r5)     // Catch: java.lang.NumberFormatException -> L56
            goto L57
        L56:
            r5 = r1
        L57:
            int r7 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r7 != 0) goto L5f
            int r7 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r7 == 0) goto L80
        L5f:
            java.lang.String r0 = "accesscode"
            java.lang.Object r0 = r14.get(r0)
            r9 = r0
            java.lang.String r9 = (java.lang.String) r9
            java.lang.String r0 = "gameinstanceid"
            java.lang.Object r14 = r14.get(r0)
            r10 = r14
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Long r7 = java.lang.Long.valueOf(r3)
            java.lang.Long r8 = java.lang.Long.valueOf(r5)
            r11 = 0
            java.lang.String r12 = "ExternalProtocol"
            com.roblox.client.game.h r0 = com.roblox.client.game.h.a(r7, r8, r9, r10, r11, r12)
        L80:
            boolean r14 = r13.isTaskRoot()
            java.lang.String r1 = "rbx.externallaunch"
            if (r14 == 0) goto L9e
            java.lang.String r14 = "onCreate() activity is root - starting splash (regular start-up flow)"
            com.roblox.client.ae.k.b(r1, r14)
            if (r0 == 0) goto L94
            com.roblox.client.game.i r14 = r13.q
            r14.a(r0)
        L94:
            com.roblox.client.startup.e r14 = com.roblox.client.startup.e.PROTOCOL_LAUNCH
            android.content.Intent r14 = com.roblox.client.startup.ActivitySplash.a(r13, r14)
            r13.startActivity(r14)
            goto Lc4
        L9e:
            java.lang.String r14 = "onCreate() activity on existing stack - checking to launch data"
            com.roblox.client.ae.k.b(r1, r14)
            java.lang.String r14 = "ProtocolLaunch"
            java.lang.String r1 = "AppLaunch"
            if (r0 == 0) goto Lb8
            boolean r2 = r13.n()
            if (r2 == 0) goto Lb8
            r13.a(r0)
            java.lang.String r0 = "PlaceId"
            com.roblox.client.analytics.d.a(r1, r14, r0)
            goto Lc4
        Lb8:
            java.lang.String r2 = "Resume App"
            com.roblox.client.analytics.d.a(r1, r14, r2)
            if (r0 == 0) goto Lc4
            com.roblox.client.game.i r14 = r13.q
            r14.a(r0)
        Lc4:
            r13.finish()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.ActivityProtocolLaunch.onCreate(android.os.Bundle):void");
    }

    private boolean n() {
        if (!this.q.a()) {
            com.roblox.client.ae.k.b("rbx.externallaunch", "Protocol Launch: Can't start game.");
            return false;
        }
        return com.roblox.client.s.h.a().c();
    }

    private void a(com.roblox.client.game.h hVar) {
        if (this.q.b()) {
            com.roblox.client.ae.k.d("rbx.externallaunch", "startGame: A game is in progress. Ignore request!");
            Toast.makeText(this, o.j.Game_Launch_Response_GameStartFailureGameInProgress, 1).show();
        } else {
            this.q.a(this, hVar, -1);
        }
    }
}

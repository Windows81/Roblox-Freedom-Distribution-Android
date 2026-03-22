package com.roblox.client.purchase.google;

import com.roblox.client.http.post.GsonCompatibleRequestBody;
import com.roblox.client.purchase.google.a.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class GooglePurchaseReceiptRequestBody implements GsonCompatibleRequestBody {
    private boolean isRetry;
    private String orderId;
    private String packageName;
    private String productId;
    private String token;

    public GooglePurchaseReceiptRequestBody(h hVar, boolean z) {
        this.packageName = hVar.c();
        this.productId = hVar.d();
        this.orderId = hVar.b();
        this.isRetry = z;
        this.token = hVar.f();
    }
}

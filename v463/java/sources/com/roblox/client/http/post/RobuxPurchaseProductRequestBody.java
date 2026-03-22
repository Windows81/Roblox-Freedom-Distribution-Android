package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RobuxPurchaseProductRequestBody implements GsonCompatibleRequestBody {
    private String currency;
    private String productId;

    public RobuxPurchaseProductRequestBody(String str, String str2) {
        this.productId = str;
        this.currency = str2;
    }
}

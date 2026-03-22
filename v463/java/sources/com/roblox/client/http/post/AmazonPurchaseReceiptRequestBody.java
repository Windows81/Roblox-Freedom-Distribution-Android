package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AmazonPurchaseReceiptRequestBody implements GsonCompatibleRequestBody {
    private String amazonUserId;
    private boolean isRetry;
    private String receiptId;

    public AmazonPurchaseReceiptRequestBody(String str, String str2, boolean z) {
        this.receiptId = str;
        this.amazonUserId = str2;
        this.isRetry = z;
    }
}

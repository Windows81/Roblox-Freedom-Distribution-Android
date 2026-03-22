package com.roblox.client.purchase.google;

import android.content.Context;
import com.roblox.client.h;
import com.roblox.client.purchase.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnumC0126a f7564a;

    /* JADX INFO: renamed from: com.roblox.client.purchase.google.a$a, reason: collision with other inner class name */
    public enum EnumC0126a {
        SUCCESS,
        IS_EMULATOR,
        VALIDATION_ERROR,
        VALIDATION_RETRY,
        VALIDATION_LIMIT,
        REQUEST_BALANCE_ERROR,
        CONSUME_ERROR,
        USER_CANCELLED,
        IAB_LAUNCH_PURCHASE_FLOW_ERROR,
        IAB_HANDLE_ACTIVITY_RESULT_ERROR,
        IAB_QUERY_INVENTORY_ERROR,
        IAB_CONSUME_ERROR,
        RECEIPT_VERIFICATION_ERROR,
        RECEIPT_EMPTY,
        EMPTY_USERNAME,
        FAILED_PURCHASE_RESPONSE,
        FAILED_PURCHASE_UPDATE_RESPONSE,
        UNKNOWN
    }

    public a(EnumC0126a enumC0126a) {
        this.f7564a = enumC0126a;
    }

    @Override // com.roblox.client.purchase.d
    public CharSequence a(Context context) {
        String string = context.getString(h.a.CommonUI_Messages_Response_RobloxSupport);
        switch (this.f7564a) {
            case SUCCESS:
                return context.getText(h.a.Purchasing_RobloxProducts_Response_PurchaseSuccessfulAndroid);
            case IS_EMULATOR:
                return context.getString(h.a.Purchasing_RobloxProducts_Response_PurchaseIsEmulator, string);
            case VALIDATION_ERROR:
                return context.getString(h.a.Purchasing_RobloxProducts_Response_PurchaseNotCompleted, string);
            case VALIDATION_RETRY:
                return context.getText(h.a.Purchasing_RobloxProducts_Response_BillingUnavailableTryLater);
            case VALIDATION_LIMIT:
                return context.getString(h.a.Purchasing_RobloxProducts_Response_PurchaseValidateLimit, string);
            case REQUEST_BALANCE_ERROR:
                return context.getString(h.a.Purchasing_RobloxProducts_Response_PurchaseNotCompleted, string);
            case USER_CANCELLED:
                return context.getString(h.a.Purchasing_RobloxProducts_Response_PurchaseCancelled, string);
            default:
                return context.getString(h.a.Purchasing_RobloxProducts_Response_PurchaseNotCompleted, string);
        }
    }

    @Override // com.roblox.client.purchase.d
    public boolean a() {
        switch (this.f7564a) {
            case SUCCESS:
            case VALIDATION_RETRY:
                return false;
            case IS_EMULATOR:
            case VALIDATION_ERROR:
                return true;
            default:
                return true;
        }
    }

    @Override // com.roblox.client.purchase.d
    public boolean b() {
        return this.f7564a == EnumC0126a.SUCCESS;
    }
}

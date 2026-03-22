package com.roblox.client.purchase.google;

import android.content.Context;
import com.roblox.client.m.c;
import com.roblox.client.o;
import com.roblox.client.purchase.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnumC0165a f6692a;

    /* JADX INFO: renamed from: com.roblox.client.purchase.google.a$a, reason: collision with other inner class name */
    public enum EnumC0165a {
        SUCCESS,
        IS_EMULATOR,
        VALIDATION_ERROR,
        VALIDATION_RETRY,
        VALIDATION_LIMIT,
        VALIDATION_LIMIT_UNDER_13,
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
        FAILED_NOT_ALLOWED,
        UNKNOWN
    }

    public a(EnumC0165a enumC0165a) {
        this.f6692a = enumC0165a;
    }

    /* JADX INFO: renamed from: com.roblox.client.purchase.google.a$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6693a;

        static {
            int[] iArr = new int[EnumC0165a.values().length];
            f6693a = iArr;
            try {
                iArr[EnumC0165a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6693a[EnumC0165a.IS_EMULATOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6693a[EnumC0165a.VALIDATION_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6693a[EnumC0165a.VALIDATION_RETRY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6693a[EnumC0165a.VALIDATION_LIMIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6693a[EnumC0165a.VALIDATION_LIMIT_UNDER_13.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6693a[EnumC0165a.REQUEST_BALANCE_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6693a[EnumC0165a.USER_CANCELLED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6693a[EnumC0165a.IAB_LAUNCH_PURCHASE_FLOW_ERROR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6693a[EnumC0165a.IAB_HANDLE_ACTIVITY_RESULT_ERROR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f6693a[EnumC0165a.IAB_QUERY_INVENTORY_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f6693a[EnumC0165a.IAB_CONSUME_ERROR.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f6693a[EnumC0165a.RECEIPT_VERIFICATION_ERROR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f6693a[EnumC0165a.RECEIPT_EMPTY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f6693a[EnumC0165a.EMPTY_USERNAME.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f6693a[EnumC0165a.FAILED_PURCHASE_RESPONSE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f6693a[EnumC0165a.FAILED_PURCHASE_UPDATE_RESPONSE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f6693a[EnumC0165a.UNKNOWN.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f6693a[EnumC0165a.FAILED_NOT_ALLOWED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    @Override // com.roblox.client.purchase.f
    public CharSequence a(Context context) {
        String string = context.getString(o.j.CommonUI_Messages_Response_RobloxSupport);
        switch (AnonymousClass1.f6693a[this.f6692a.ordinal()]) {
            case 1:
                return context.getText(o.j.Purchasing_RobloxProducts_Response_PurchaseSuccessfulAndroid);
            case 2:
                return c.a().cP() ? context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseIsEmulatorV2) : context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseIsEmulator, string);
            case 3:
                return c.a().cP() ? context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseNotCompletedV2) : context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseNotCompleted, string);
            case 4:
                return context.getText(o.j.Purchasing_RobloxProducts_Response_BillingUnavailableTryLater);
            case 5:
                return c.a().cP() ? context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseValidateLimitV2) : context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseValidateLimit, string);
            case 6:
                return context.getText(o.j.Purchasing_RobloxProducts_Response_PurchasingLimitUnder13);
            case 7:
                return c.a().cP() ? context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseNotCompletedV2) : context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseNotCompleted, string);
            case 8:
                return c.a().cO() ? context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseCancelledV2) : context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseCancelled, string);
            default:
                return c.a().cP() ? context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseNotCompletedV2) : context.getString(o.j.Purchasing_RobloxProducts_Response_PurchaseNotCompleted, string);
        }
    }

    @Override // com.roblox.client.purchase.f
    public boolean a() {
        int i = AnonymousClass1.f6693a[this.f6692a.ordinal()];
        return (i == 1 || i == 4 || i == 6) ? false : true;
    }

    @Override // com.roblox.client.purchase.f
    public boolean b() {
        return this.f6692a == EnumC0165a.SUCCESS;
    }
}

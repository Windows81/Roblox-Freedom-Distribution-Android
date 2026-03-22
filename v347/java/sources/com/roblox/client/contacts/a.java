package com.roblox.client.contacts;

import android.net.Uri;
import android.provider.ContactsContract;
import com.roblox.client.contacts.model.ContactRequestObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Uri f6780a = ContactsContract.Data.CONTENT_URI;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String[] f6781b = {"contact_id", "mimetype", "display_name", "photo_thumb_uri", "data1", "data2", "data3", "data4", "data5", "data6", "data7", "data8", "data9", "data10", "data11", "data12", "data13", "data14"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String[] f6782c = {"vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/name", "vnd.android.cursor.item/postal-address_v2", "1", "", "1"};

    public static String a(int i) {
        switch (i) {
            case 1:
                return "Home";
            case 2:
                return "Mobile";
            case 3:
            case 17:
                return "Work";
            default:
                return ContactRequestObject.JSON_FIELD_PHONE;
        }
    }
}

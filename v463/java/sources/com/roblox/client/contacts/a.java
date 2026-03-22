package com.roblox.client.contacts;

import android.net.Uri;
import android.provider.ContactsContract;
import com.roblox.client.contacts.model.ContactRequestObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Uri f5895a = ContactsContract.Data.CONTENT_URI;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String[] f5896b = {"contact_id", "mimetype", "display_name", "photo_thumb_uri", "data1", "data2", "data3", "data4", "data5", "data6", "data7", "data8", "data9", "data10", "data11", "data12", "data13", "data14"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String[] f5897c = {"vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/name", "vnd.android.cursor.item/postal-address_v2", "1", "", "1"};

    public static String a(int i) {
        return i != 1 ? i != 2 ? (i == 3 || i == 17) ? "Work" : ContactRequestObject.JSON_FIELD_PHONE : "Mobile" : "Home";
    }
}

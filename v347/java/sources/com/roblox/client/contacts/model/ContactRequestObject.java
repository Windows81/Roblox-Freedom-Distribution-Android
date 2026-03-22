package com.roblox.client.contacts.model;

import com.roblox.client.datastructures.NameValuePair;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ContactRequestObject {
    public static final String JSON_FIELD_COUNTRY = "Country";
    public static final String JSON_FIELD_EMAIL = "Email";
    public static final String JSON_FIELD_FIRST_NAME = "FirstName";
    public static final String JSON_FIELD_LAST_NAME = "LastName";
    public static final String JSON_FIELD_MIDDLE_NAME = "MiddleName";
    public static final String JSON_FIELD_PHONE = "Phone";
    private ArrayList<NameValuePair> fields = new ArrayList<>();
    private long sourceId;

    public ContactRequestObject(long j) {
        this.sourceId = j;
    }

    public void addField(String str, String str2) {
        this.fields.add(new NameValuePair(str, str2));
    }
}

package com.roblox.client.http.post;

import com.roblox.client.contacts.model.ContactRequestObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ContactsSyncRequestBody implements GsonCompatibleRequestBody {
    private ArrayList<ContactRequestObject> contacts;
    private String country;

    public ContactsSyncRequestBody(ArrayList<ContactRequestObject> arrayList, String str) {
        this.contacts = arrayList;
        this.country = str;
    }
}

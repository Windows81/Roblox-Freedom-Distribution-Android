package com.roblox.client.contacts.model;

import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ContactRequestObject f6852d;
    private ArrayList<b> e;

    public c(long j, String str) {
        super(j, str);
        this.e = new ArrayList<>();
        this.f6852d = new ContactRequestObject(j);
    }

    public String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return ContactRequestObject.JSON_FIELD_PHONE;
        }
        for (b bVar : this.e) {
            if (str.equals(bVar.a())) {
                return bVar.b();
            }
        }
        return ContactRequestObject.JSON_FIELD_PHONE;
    }

    public void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f6852d.addField(ContactRequestObject.JSON_FIELD_FIRST_NAME, str);
        }
    }

    public void d(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f6852d.addField(ContactRequestObject.JSON_FIELD_MIDDLE_NAME, str);
        }
    }

    public void e(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f6852d.addField(ContactRequestObject.JSON_FIELD_LAST_NAME, str);
        }
    }

    public void f(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f6852d.addField(ContactRequestObject.JSON_FIELD_COUNTRY, str);
        }
    }

    public void a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            this.f6852d.addField(ContactRequestObject.JSON_FIELD_EMAIL, str);
        }
    }

    public void b(String str, String str2) {
        if (str != null) {
            this.e.add(new b(str, str2));
            this.f6852d.addField(ContactRequestObject.JSON_FIELD_PHONE, str);
        }
    }

    public ContactRequestObject d() {
        return this.f6852d;
    }
}

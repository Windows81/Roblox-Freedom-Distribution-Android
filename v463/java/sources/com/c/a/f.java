package com.c.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import com.c.a.t;
import com.c.a.y;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class f extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final UriMatcher f3126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3127b;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f3126a = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f3126a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f3126a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f3126a.addURI("com.android.contacts", "contacts/#", 3);
        f3126a.addURI("com.android.contacts", "display_photo/#", 4);
    }

    f(Context context) {
        this.f3127b = context;
    }

    @Override // com.c.a.y
    public boolean a(w wVar) {
        Uri uri = wVar.f3207d;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f3126a.match(wVar.f3207d) != -1;
    }

    @Override // com.c.a.y
    public y.a a(w wVar, int i) throws IOException {
        InputStream inputStreamB = b(wVar);
        if (inputStreamB != null) {
            return new y.a(inputStreamB, t.d.DISK);
        }
        return null;
    }

    private InputStream b(w wVar) throws IOException {
        ContentResolver contentResolver = this.f3127b.getContentResolver();
        Uri uriLookupContact = wVar.f3207d;
        int iMatch = f3126a.match(uriLookupContact);
        if (iMatch == 1) {
            uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uriLookupContact);
            if (uriLookupContact == null) {
                return null;
            }
        } else {
            if (iMatch != 2) {
                if (iMatch != 3) {
                    if (iMatch != 4) {
                        throw new IllegalStateException("Invalid uri: " + uriLookupContact);
                    }
                }
            }
            return contentResolver.openInputStream(uriLookupContact);
        }
        if (Build.VERSION.SDK_INT < 14) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uriLookupContact);
        }
        return a.a(contentResolver, uriLookupContact);
    }

    private static class a {
        static InputStream a(ContentResolver contentResolver, Uri uri) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        }
    }
}

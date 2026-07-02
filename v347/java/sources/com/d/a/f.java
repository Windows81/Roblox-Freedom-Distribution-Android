package com.d.a;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import com.d.a.t;
import com.d.a.y;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class f extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final UriMatcher f2472a = new UriMatcher(-1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f2473b;

    static {
        f2472a.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f2472a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f2472a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f2472a.addURI("com.android.contacts", "contacts/#", 3);
        f2472a.addURI("com.android.contacts", "display_photo/#", 4);
    }

    f(Context context) {
        this.f2473b = context;
    }

    @Override // com.d.a.y
    public boolean a(w wVar) {
        Uri uri = wVar.f2544d;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f2472a.match(wVar.f2544d) != -1;
    }

    @Override // com.d.a.y
    public y.a a(w wVar, int i) throws IOException {
        InputStream inputStreamB = b(wVar);
        if (inputStreamB != null) {
            return new y.a(inputStreamB, t.d.DISK);
        }
        return null;
    }

    private InputStream b(w wVar) throws IOException {
        ContentResolver contentResolver = this.f2473b.getContentResolver();
        Uri uriLookupContact = wVar.f2544d;
        switch (f2472a.match(uriLookupContact)) {
            case 1:
                uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uriLookupContact);
                if (uriLookupContact == null) {
                    return null;
                }
                break;
            case 2:
            case 4:
                return contentResolver.openInputStream(uriLookupContact);
            case 3:
                break;
            default:
                throw new IllegalStateException("Invalid uri: " + uriLookupContact);
        }
        if (Build.VERSION.SDK_INT < 14) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uriLookupContact);
        }
        return a.a(contentResolver, uriLookupContact);
    }

    @TargetApi(14)
    private static class a {
        static InputStream a(ContentResolver contentResolver, Uri uri) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        }
    }
}

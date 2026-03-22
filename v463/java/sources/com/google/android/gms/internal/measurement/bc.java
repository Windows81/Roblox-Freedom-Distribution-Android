package com.google.android.gms.internal.measurement;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.bb;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class bc<T extends bb> extends ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private bd<T> f4067a;

    public bc(ae aeVar, bd<T> bdVar) {
        super(aeVar);
        this.f4067a = bdVar;
    }

    private final T a(XmlResourceParser xmlResourceParser) {
        String strTrim;
        String str;
        try {
            xmlResourceParser.next();
            int eventType = xmlResourceParser.getEventType();
            while (eventType != 1) {
                if (xmlResourceParser.getEventType() == 2) {
                    String lowerCase = xmlResourceParser.getName().toLowerCase(Locale.US);
                    if (lowerCase.equals("screenname")) {
                        String attributeValue = xmlResourceParser.getAttributeValue(null, "name");
                        String strTrim2 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue) && !TextUtils.isEmpty(strTrim2)) {
                            this.f4067a.a(attributeValue, strTrim2);
                        }
                    } else if (lowerCase.equals("string")) {
                        String attributeValue2 = xmlResourceParser.getAttributeValue(null, "name");
                        String strTrim3 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue2) && strTrim3 != null) {
                            this.f4067a.b(attributeValue2, strTrim3);
                        }
                    } else if (lowerCase.equals("bool")) {
                        String attributeValue3 = xmlResourceParser.getAttributeValue(null, "name");
                        strTrim = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue3) && !TextUtils.isEmpty(strTrim)) {
                            try {
                                this.f4067a.a(attributeValue3, Boolean.parseBoolean(strTrim));
                            } catch (NumberFormatException e2) {
                                e = e2;
                                str = "Error parsing bool configuration value";
                                c(str, strTrim, e);
                            }
                        }
                    } else if (lowerCase.equals("integer")) {
                        String attributeValue4 = xmlResourceParser.getAttributeValue(null, "name");
                        strTrim = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue4) && !TextUtils.isEmpty(strTrim)) {
                            try {
                                this.f4067a.a(attributeValue4, Integer.parseInt(strTrim));
                            } catch (NumberFormatException e3) {
                                e = e3;
                                str = "Error parsing int configuration value";
                                c(str, strTrim, e);
                            }
                        }
                    }
                }
                eventType = xmlResourceParser.next();
            }
        } catch (IOException | XmlPullParserException e4) {
            e("Error parsing tracker configuration file", e4);
        }
        return (T) this.f4067a.a();
    }

    public final T a(int i) {
        try {
            return (T) a(h().b().getResources().getXml(i));
        } catch (Resources.NotFoundException e2) {
            d("inflate() called with unknown resourceId", e2);
            return null;
        }
    }
}

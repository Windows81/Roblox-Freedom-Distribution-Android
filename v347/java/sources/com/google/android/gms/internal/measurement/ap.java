package com.google.android.gms.internal.measurement;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ao;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class ap<T extends ao> extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private aq<T> f5872a;

    public ap(r rVar, aq<T> aqVar) {
        super(rVar);
        this.f5872a = aqVar;
    }

    private final T a(XmlResourceParser xmlResourceParser) {
        try {
            xmlResourceParser.next();
            int eventType = xmlResourceParser.getEventType();
            while (eventType != 1) {
                if (xmlResourceParser.getEventType() == 2) {
                    String lowerCase = xmlResourceParser.getName().toLowerCase(Locale.US);
                    if (lowerCase.equals("screenname")) {
                        String attributeValue = xmlResourceParser.getAttributeValue(null, "name");
                        String strTrim = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue) && !TextUtils.isEmpty(strTrim)) {
                            this.f5872a.a(attributeValue, strTrim);
                        }
                    } else if (lowerCase.equals("string")) {
                        String attributeValue2 = xmlResourceParser.getAttributeValue(null, "name");
                        String strTrim2 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue2) && strTrim2 != null) {
                            this.f5872a.b(attributeValue2, strTrim2);
                        }
                    } else if (lowerCase.equals("bool")) {
                        String attributeValue3 = xmlResourceParser.getAttributeValue(null, "name");
                        String strTrim3 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue3) && !TextUtils.isEmpty(strTrim3)) {
                            try {
                                this.f5872a.a(attributeValue3, Boolean.parseBoolean(strTrim3));
                            } catch (NumberFormatException e) {
                                c("Error parsing bool configuration value", strTrim3, e);
                            }
                        }
                    } else if (lowerCase.equals("integer")) {
                        String attributeValue4 = xmlResourceParser.getAttributeValue(null, "name");
                        String strTrim4 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue4) && !TextUtils.isEmpty(strTrim4)) {
                            try {
                                this.f5872a.a(attributeValue4, Integer.parseInt(strTrim4));
                            } catch (NumberFormatException e2) {
                                c("Error parsing int configuration value", strTrim4, e2);
                            }
                        }
                    }
                }
                eventType = xmlResourceParser.next();
            }
        } catch (IOException e3) {
            e = e3;
            e("Error parsing tracker configuration file", e);
            return (T) this.f5872a.a();
        } catch (XmlPullParserException e4) {
            e = e4;
            e("Error parsing tracker configuration file", e);
            return (T) this.f5872a.a();
        }
        return (T) this.f5872a.a();
    }

    public final T a(int i) {
        try {
            return (T) a(h().b().getResources().getXml(i));
        } catch (Resources.NotFoundException e) {
            d("inflate() called with unknown resourceId", e);
            return null;
        }
    }
}

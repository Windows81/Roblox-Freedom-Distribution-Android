package android.support.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {
    public static Interpolator a(Context context, int i) throws Resources.NotFoundException {
        Interpolator interpolatorA;
        if (Build.VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, i);
        }
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    if (i == 17563663) {
                        interpolatorA = new android.support.v4.view.b.a();
                    } else if (i == 17563661) {
                        interpolatorA = new android.support.v4.view.b.b();
                        if (0 != 0) {
                            animation.close();
                        }
                    } else if (i == 17563662) {
                        interpolatorA = new android.support.v4.view.b.c();
                        if (0 != 0) {
                            animation.close();
                        }
                    } else {
                        animation = context.getResources().getAnimation(i);
                        interpolatorA = a(context, context.getResources(), context.getTheme(), animation);
                        if (animation != null) {
                            animation.close();
                        }
                    }
                    return interpolatorA;
                } catch (XmlPullParserException e) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                    notFoundException.initCause(e);
                    throw notFoundException;
                }
            } catch (IOException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } finally {
            if (animation != null) {
                animation.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cc, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.view.animation.Interpolator a(android.content.Context r4, android.content.res.Resources r5, android.content.res.Resources.Theme r6, org.xmlpull.v1.XmlPullParser r7) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.c.a.d.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser):android.view.animation.Interpolator");
    }
}

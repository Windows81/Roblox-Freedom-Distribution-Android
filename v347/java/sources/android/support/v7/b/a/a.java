package android.support.v7.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class a {
    public static ColorStateList a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return a(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
    }

    private static ColorStateList a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        return b(resources, xmlPullParser, attributeSet, theme);
    }

    private static ColorStateList b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int i;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20][];
        int[][] iArr2 = iArr;
        int i2 = 0;
        int[] iArr3 = new int[iArr.length];
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayA = a(resources, theme, attributeSet, a.j.ColorStateListItem);
                int color = typedArrayA.getColor(a.j.ColorStateListItem_android_color, -65281);
                float f = 1.0f;
                if (typedArrayA.hasValue(a.j.ColorStateListItem_android_alpha)) {
                    f = typedArrayA.getFloat(a.j.ColorStateListItem_android_alpha, 1.0f);
                } else if (typedArrayA.hasValue(a.j.ColorStateListItem_alpha)) {
                    f = typedArrayA.getFloat(a.j.ColorStateListItem_alpha, 1.0f);
                }
                typedArrayA.recycle();
                int i3 = 0;
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr4 = new int[attributeCount];
                int i4 = 0;
                while (i4 < attributeCount) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i4);
                    if (attributeNameResource == 16843173 || attributeNameResource == 16843551 || attributeNameResource == a.C0032a.alpha) {
                        i = i3;
                    } else {
                        int i5 = i3 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i4, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr4[i3] = attributeNameResource;
                        i = i5;
                    }
                    i4++;
                    i3 = i;
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr4, i3);
                int iA = a(color, f);
                if (i2 == 0 || iArrTrimStateSet.length == 0) {
                }
                int[] iArrA = c.a(iArr3, i2, iA);
                int[][] iArr5 = (int[][]) c.a(iArr2, i2, iArrTrimStateSet);
                i2++;
                iArr2 = iArr5;
                iArr3 = iArrA;
            }
        }
        int[] iArr6 = new int[i2];
        int[][] iArr7 = new int[i2][];
        System.arraycopy(iArr3, 0, iArr6, 0, i2);
        System.arraycopy(iArr2, 0, iArr7, 0, i2);
        return new ColorStateList(iArr7, iArr6);
    }

    private static TypedArray a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private static int a(int i, float f) {
        return android.support.v4.b.a.b(i, Math.round(Color.alpha(i) * f));
    }
}

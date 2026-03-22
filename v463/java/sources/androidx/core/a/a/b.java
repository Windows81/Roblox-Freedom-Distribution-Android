package androidx.core.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Shader f1249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ColorStateList f1250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1251c;

    private b(Shader shader, ColorStateList colorStateList, int i) {
        this.f1249a = shader;
        this.f1250b = colorStateList;
        this.f1251c = i;
    }

    static b a(Shader shader) {
        return new b(shader, null, 0);
    }

    static b a(ColorStateList colorStateList) {
        return new b(null, colorStateList, colorStateList.getDefaultColor());
    }

    static b a(int i) {
        return new b(null, null, i);
    }

    public Shader a() {
        return this.f1249a;
    }

    public int b() {
        return this.f1251c;
    }

    public void b(int i) {
        this.f1251c = i;
    }

    public boolean c() {
        return this.f1249a != null;
    }

    public boolean d() {
        ColorStateList colorStateList;
        return this.f1249a == null && (colorStateList = this.f1250b) != null && colorStateList.isStateful();
    }

    public boolean a(int[] iArr) {
        if (d()) {
            ColorStateList colorStateList = this.f1250b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f1251c) {
                this.f1251c = colorForState;
                return true;
            }
        }
        return false;
    }

    public boolean e() {
        return c() || this.f1251c != 0;
    }

    public static b a(Resources resources, int i, Resources.Theme theme) {
        try {
            return b(resources, i, theme);
        } catch (Exception e2) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e2);
            return null;
        }
    }

    private static b b(Resources resources, int i, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        byte b2 = -1;
        int iHashCode = name.hashCode();
        if (iHashCode != 89650992) {
            if (iHashCode == 1191572447 && name.equals("selector")) {
                b2 = 0;
            }
        } else if (name.equals("gradient")) {
            b2 = 1;
        }
        if (b2 == 0) {
            return a(a.a(resources, xml, attributeSetAsAttributeSet, theme));
        }
        if (b2 == 1) {
            return a(d.a(resources, xml, attributeSetAsAttributeSet, theme));
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
    }
}

package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ActivityChooserModel extends DataSetObservable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f1438a = ActivityChooserModel.class.getSimpleName();
    private static final Object e = new Object();
    private static final Map<String, ActivityChooserModel> f = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f1439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String f1440c;
    private Intent j;
    private OnChooseActivityListener p;
    private final Object g = new Object();
    private final List<ActivityResolveInfo> h = new ArrayList();
    private final List<HistoricalRecord> i = new ArrayList();
    private ActivitySorter k = new a();
    private int l = 50;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1441d = true;
    private boolean m = false;
    private boolean n = true;
    private boolean o = false;

    public interface ActivityChooserModelClient {
        void setActivityChooserModel(ActivityChooserModel activityChooserModel);
    }

    public interface ActivitySorter {
        void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    public interface OnChooseActivityListener {
        boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent);
    }

    public static ActivityChooserModel a(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (e) {
            activityChooserModel = f.get(str);
            if (activityChooserModel == null) {
                activityChooserModel = new ActivityChooserModel(context, str);
                f.put(str, activityChooserModel);
            }
        }
        return activityChooserModel;
    }

    private ActivityChooserModel(Context context, String str) {
        this.f1439b = context.getApplicationContext();
        if (!TextUtils.isEmpty(str) && !str.endsWith(".xml")) {
            this.f1440c = str + ".xml";
        } else {
            this.f1440c = str;
        }
    }

    public void a(Intent intent) {
        synchronized (this.g) {
            if (this.j != intent) {
                this.j = intent;
                this.o = true;
                e();
            }
        }
    }

    public int a() {
        int size;
        synchronized (this.g) {
            e();
            size = this.h.size();
        }
        return size;
    }

    public ResolveInfo a(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.g) {
            e();
            resolveInfo = this.h.get(i).resolveInfo;
        }
        return resolveInfo;
    }

    public int a(ResolveInfo resolveInfo) {
        synchronized (this.g) {
            e();
            List<ActivityResolveInfo> list = this.h;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).resolveInfo == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    public Intent b(int i) {
        synchronized (this.g) {
            if (this.j == null) {
                return null;
            }
            e();
            ActivityResolveInfo activityResolveInfo = this.h.get(i);
            ComponentName componentName = new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name);
            Intent intent = new Intent(this.j);
            intent.setComponent(componentName);
            if (this.p != null) {
                if (this.p.onChooseActivity(this, new Intent(intent))) {
                    return null;
                }
            }
            a(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    public void a(OnChooseActivityListener onChooseActivityListener) {
        synchronized (this.g) {
            this.p = onChooseActivityListener;
        }
    }

    public ResolveInfo b() {
        synchronized (this.g) {
            e();
            if (!this.h.isEmpty()) {
                return this.h.get(0).resolveInfo;
            }
            return null;
        }
    }

    public void c(int i) {
        float f2;
        synchronized (this.g) {
            e();
            ActivityResolveInfo activityResolveInfo = this.h.get(i);
            ActivityResolveInfo activityResolveInfo2 = this.h.get(0);
            if (activityResolveInfo2 != null) {
                f2 = (activityResolveInfo2.weight - activityResolveInfo.weight) + 5.0f;
            } else {
                f2 = 1.0f;
            }
            a(new HistoricalRecord(new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name), System.currentTimeMillis(), f2));
        }
    }

    private void d() {
        if (!this.m) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (this.n) {
            this.n = false;
            if (!TextUtils.isEmpty(this.f1440c)) {
                new b().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.i), this.f1440c);
            }
        }
    }

    public int c() {
        int size;
        synchronized (this.g) {
            e();
            size = this.i.size();
        }
        return size;
    }

    private void e() {
        boolean zG = g() | h();
        i();
        if (zG) {
            f();
            notifyChanged();
        }
    }

    private boolean f() {
        if (this.k == null || this.j == null || this.h.isEmpty() || this.i.isEmpty()) {
            return false;
        }
        this.k.sort(this.j, this.h, Collections.unmodifiableList(this.i));
        return true;
    }

    private boolean g() {
        if (!this.o || this.j == null) {
            return false;
        }
        this.o = false;
        this.h.clear();
        List<ResolveInfo> listQueryIntentActivities = this.f1439b.getPackageManager().queryIntentActivities(this.j, 0);
        int size = listQueryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.h.add(new ActivityResolveInfo(listQueryIntentActivities.get(i)));
        }
        return true;
    }

    private boolean h() {
        if (!this.f1441d || !this.n || TextUtils.isEmpty(this.f1440c)) {
            return false;
        }
        this.f1441d = false;
        this.m = true;
        j();
        return true;
    }

    private boolean a(HistoricalRecord historicalRecord) {
        boolean zAdd = this.i.add(historicalRecord);
        if (zAdd) {
            this.n = true;
            i();
            d();
            f();
            notifyChanged();
        }
        return zAdd;
    }

    private void i() {
        int size = this.i.size() - this.l;
        if (size > 0) {
            this.n = true;
            for (int i = 0; i < size; i++) {
                this.i.remove(0);
            }
        }
    }

    public static final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public HistoricalRecord(ComponentName componentName, long j, float f) {
            this.activity = componentName;
            this.time = j;
            this.weight = f;
        }

        public int hashCode() {
            return (((((this.activity == null ? 0 : this.activity.hashCode()) + 31) * 31) + ((int) (this.time ^ (this.time >>> 32)))) * 31) + Float.floatToIntBits(this.weight);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                HistoricalRecord historicalRecord = (HistoricalRecord) obj;
                if (this.activity == null) {
                    if (historicalRecord.activity != null) {
                        return false;
                    }
                } else if (!this.activity.equals(historicalRecord.activity)) {
                    return false;
                }
                return this.time == historicalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(historicalRecord.weight);
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("; activity:").append(this.activity);
            sb.append("; time:").append(this.time);
            sb.append("; weight:").append(new BigDecimal(this.weight));
            sb.append("]");
            return sb.toString();
        }
    }

    public static final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        public final ResolveInfo resolveInfo;
        public float weight;

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.resolveInfo = resolveInfo;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityResolveInfo) obj).weight);
        }

        @Override // java.lang.Comparable
        public int compareTo(ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.weight) - Float.floatToIntBits(this.weight);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("resolveInfo:").append(this.resolveInfo.toString());
            sb.append("; weight:").append(new BigDecimal(this.weight));
            sb.append("]");
            return sb.toString();
        }
    }

    private static final class a implements ActivitySorter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<ComponentName, ActivityResolveInfo> f1442a = new HashMap();

        a() {
        }

        @Override // android.support.v7.widget.ActivityChooserModel.ActivitySorter
        public void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2) {
            float f;
            Map<ComponentName, ActivityResolveInfo> map = this.f1442a;
            map.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ActivityResolveInfo activityResolveInfo = list.get(i);
                activityResolveInfo.weight = 0.0f;
                map.put(new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name), activityResolveInfo);
            }
            float f2 = 1.0f;
            int size2 = list2.size() - 1;
            while (size2 >= 0) {
                HistoricalRecord historicalRecord = list2.get(size2);
                ActivityResolveInfo activityResolveInfo2 = map.get(historicalRecord.activity);
                if (activityResolveInfo2 != null) {
                    activityResolveInfo2.weight = (historicalRecord.weight * f2) + activityResolveInfo2.weight;
                    f = 0.95f * f2;
                } else {
                    f = f2;
                }
                size2--;
                f2 = f;
            }
            Collections.sort(list);
        }
    }

    private void j() {
        FileInputStream fileInputStreamOpenFileInput;
        try {
            try {
                fileInputStreamOpenFileInput = this.f1439b.openFileInput(this.f1440c);
                try {
                    try {
                        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                        xmlPullParserNewPullParser.setInput(fileInputStreamOpenFileInput, Constants.UTF8_NAME);
                        for (int next = 0; next != 1 && next != 2; next = xmlPullParserNewPullParser.next()) {
                        }
                        if (!"historical-records".equals(xmlPullParserNewPullParser.getName())) {
                            throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                        }
                        List<HistoricalRecord> list = this.i;
                        list.clear();
                        while (true) {
                            int next2 = xmlPullParserNewPullParser.next();
                            if (next2 == 1) {
                                if (fileInputStreamOpenFileInput != null) {
                                    try {
                                        fileInputStreamOpenFileInput.close();
                                        return;
                                    } catch (IOException e2) {
                                        return;
                                    }
                                }
                                return;
                            }
                            if (next2 != 3 && next2 != 4) {
                                if (!"historical-record".equals(xmlPullParserNewPullParser.getName())) {
                                    throw new XmlPullParserException("Share records file not well-formed.");
                                }
                                list.add(new HistoricalRecord(xmlPullParserNewPullParser.getAttributeValue(null, "activity"), Long.parseLong(xmlPullParserNewPullParser.getAttributeValue(null, "time")), Float.parseFloat(xmlPullParserNewPullParser.getAttributeValue(null, "weight"))));
                            }
                        }
                    } catch (XmlPullParserException e3) {
                        Log.e(f1438a, "Error reading historical recrod file: " + this.f1440c, e3);
                        if (fileInputStreamOpenFileInput != null) {
                            try {
                                fileInputStreamOpenFileInput.close();
                            } catch (IOException e4) {
                            }
                        }
                    }
                } catch (IOException e5) {
                    Log.e(f1438a, "Error reading historical recrod file: " + this.f1440c, e5);
                    if (fileInputStreamOpenFileInput != null) {
                        try {
                            fileInputStreamOpenFileInput.close();
                        } catch (IOException e6) {
                        }
                    }
                }
            } catch (FileNotFoundException e7) {
            }
        } catch (Throwable th) {
            if (fileInputStreamOpenFileInput != null) {
                try {
                    fileInputStreamOpenFileInput.close();
                } catch (IOException e8) {
                }
            }
            throw th;
        }
    }

    private final class b extends AsyncTask<Object, Void, Void> {
        b() {
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream fileOutputStreamOpenFileOutput = ActivityChooserModel.this.f1439b.openFileOutput(str, 0);
                XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
                try {
                    try {
                        try {
                            xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                            xmlSerializerNewSerializer.startDocument(Constants.UTF8_NAME, true);
                            xmlSerializerNewSerializer.startTag(null, "historical-records");
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                HistoricalRecord historicalRecord = (HistoricalRecord) list.remove(0);
                                xmlSerializerNewSerializer.startTag(null, "historical-record");
                                xmlSerializerNewSerializer.attribute(null, "activity", historicalRecord.activity.flattenToString());
                                xmlSerializerNewSerializer.attribute(null, "time", String.valueOf(historicalRecord.time));
                                xmlSerializerNewSerializer.attribute(null, "weight", String.valueOf(historicalRecord.weight));
                                xmlSerializerNewSerializer.endTag(null, "historical-record");
                            }
                            xmlSerializerNewSerializer.endTag(null, "historical-records");
                            xmlSerializerNewSerializer.endDocument();
                            ActivityChooserModel.this.f1441d = true;
                            if (fileOutputStreamOpenFileOutput != null) {
                                try {
                                    fileOutputStreamOpenFileOutput.close();
                                } catch (IOException e) {
                                }
                            }
                        } catch (IOException e2) {
                            Log.e(ActivityChooserModel.f1438a, "Error writing historical record file: " + ActivityChooserModel.this.f1440c, e2);
                            ActivityChooserModel.this.f1441d = true;
                            if (fileOutputStreamOpenFileOutput != null) {
                                try {
                                    fileOutputStreamOpenFileOutput.close();
                                } catch (IOException e3) {
                                }
                            }
                        }
                    } catch (IllegalArgumentException e4) {
                        Log.e(ActivityChooserModel.f1438a, "Error writing historical record file: " + ActivityChooserModel.this.f1440c, e4);
                        ActivityChooserModel.this.f1441d = true;
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (IOException e5) {
                            }
                        }
                    } catch (IllegalStateException e6) {
                        Log.e(ActivityChooserModel.f1438a, "Error writing historical record file: " + ActivityChooserModel.this.f1440c, e6);
                        ActivityChooserModel.this.f1441d = true;
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (IOException e7) {
                            }
                        }
                    }
                } catch (Throwable th) {
                    ActivityChooserModel.this.f1441d = true;
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException e8) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e9) {
                Log.e(ActivityChooserModel.f1438a, "Error writing historical record file: " + str, e9);
            }
            return null;
        }
    }
}

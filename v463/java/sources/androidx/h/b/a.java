package androidx.h.b;

import android.database.Cursor;
import android.os.Build;
import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.share.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, C0048a> f1802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<b> f1803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set<d> f1804d;

    public a(String str, Map<String, C0048a> map, Set<b> set, Set<d> set2) {
        this.f1801a = str;
        this.f1802b = Collections.unmodifiableMap(map);
        this.f1803c = Collections.unmodifiableSet(set);
        this.f1804d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public boolean equals(Object obj) {
        Set<d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f1801a;
        if (str == null ? aVar.f1801a != null : !str.equals(aVar.f1801a)) {
            return false;
        }
        Map<String, C0048a> map = this.f1802b;
        if (map == null ? aVar.f1802b != null : !map.equals(aVar.f1802b)) {
            return false;
        }
        Set<b> set2 = this.f1803c;
        if (set2 == null ? aVar.f1803c != null : !set2.equals(aVar.f1803c)) {
            return false;
        }
        Set<d> set3 = this.f1804d;
        if (set3 == null || (set = aVar.f1804d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.f1801a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, C0048a> map = this.f1802b;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.f1803c;
        return iHashCode2 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        return "TableInfo{name='" + this.f1801a + "', columns=" + this.f1802b + ", foreignKeys=" + this.f1803c + ", indices=" + this.f1804d + '}';
    }

    public static a a(androidx.i.a.b bVar, String str) {
        return new a(str, c(bVar, str), b(bVar, str), d(bVar, str));
    }

    private static Set<b> b(androidx.i.a.b bVar, String str) {
        HashSet hashSet = new HashSet();
        Cursor cursorB = bVar.b("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = cursorB.getColumnIndex("id");
            int columnIndex2 = cursorB.getColumnIndex("seq");
            int columnIndex3 = cursorB.getColumnIndex("table");
            int columnIndex4 = cursorB.getColumnIndex("on_delete");
            int columnIndex5 = cursorB.getColumnIndex("on_update");
            List<c> listA = a(cursorB);
            int count = cursorB.getCount();
            for (int i = 0; i < count; i++) {
                cursorB.moveToPosition(i);
                if (cursorB.getInt(columnIndex2) == 0) {
                    int i2 = cursorB.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (c cVar : listA) {
                        if (cVar.f1815a == i2) {
                            arrayList.add(cVar.f1817c);
                            arrayList2.add(cVar.f1818d);
                        }
                    }
                    hashSet.add(new b(cursorB.getString(columnIndex3), cursorB.getString(columnIndex4), cursorB.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            cursorB.close();
        }
    }

    private static List<c> a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static Map<String, C0048a> c(androidx.i.a.b bVar, String str) {
        Cursor cursorB = bVar.b("PRAGMA table_info(`" + str + "`)");
        HashMap map = new HashMap();
        try {
            if (cursorB.getColumnCount() > 0) {
                int columnIndex = cursorB.getColumnIndex("name");
                int columnIndex2 = cursorB.getColumnIndex(Payload.TYPE);
                int columnIndex3 = cursorB.getColumnIndex("notnull");
                int columnIndex4 = cursorB.getColumnIndex("pk");
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(columnIndex);
                    map.put(string, new C0048a(string, cursorB.getString(columnIndex2), cursorB.getInt(columnIndex3) != 0, cursorB.getInt(columnIndex4)));
                }
            }
            return map;
        } finally {
            cursorB.close();
        }
    }

    private static Set<d> d(androidx.i.a.b bVar, String str) {
        Cursor cursorB = bVar.b("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = cursorB.getColumnIndex("name");
            int columnIndex2 = cursorB.getColumnIndex("origin");
            int columnIndex3 = cursorB.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet = new HashSet();
                while (cursorB.moveToNext()) {
                    if (Constants.URL_CAMPAIGN.equals(cursorB.getString(columnIndex2))) {
                        String string = cursorB.getString(columnIndex);
                        boolean z = true;
                        if (cursorB.getInt(columnIndex3) != 1) {
                            z = false;
                        }
                        d dVarA = a(bVar, string, z);
                        if (dVarA == null) {
                            return null;
                        }
                        hashSet.add(dVarA);
                    }
                }
                return hashSet;
            }
            return null;
        } finally {
            cursorB.close();
        }
    }

    private static d a(androidx.i.a.b bVar, String str, boolean z) {
        Cursor cursorB = bVar.b("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = cursorB.getColumnIndex("seqno");
            int columnIndex2 = cursorB.getColumnIndex("cid");
            int columnIndex3 = cursorB.getColumnIndex("name");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (cursorB.moveToNext()) {
                    if (cursorB.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(cursorB.getInt(columnIndex)), cursorB.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                return new d(str, z, arrayList);
            }
            return null;
        } finally {
            cursorB.close();
        }
    }

    /* JADX INFO: renamed from: androidx.h.b.a$a, reason: collision with other inner class name */
    public static class C0048a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f1805a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f1806b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f1807c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f1808d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f1809e;

        public C0048a(String str, String str2, boolean z, int i) {
            this.f1805a = str;
            this.f1806b = str2;
            this.f1808d = z;
            this.f1809e = i;
            this.f1807c = a(str2);
        }

        private static int a(String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0048a c0048a = (C0048a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f1809e != c0048a.f1809e) {
                    return false;
                }
            } else if (a() != c0048a.a()) {
                return false;
            }
            return this.f1805a.equals(c0048a.f1805a) && this.f1808d == c0048a.f1808d && this.f1807c == c0048a.f1807c;
        }

        public boolean a() {
            return this.f1809e > 0;
        }

        public int hashCode() {
            return (((((this.f1805a.hashCode() * 31) + this.f1807c) * 31) + (this.f1808d ? 1231 : 1237)) * 31) + this.f1809e;
        }

        public String toString() {
            return "Column{name='" + this.f1805a + "', type='" + this.f1806b + "', affinity='" + this.f1807c + "', notNull=" + this.f1808d + ", primaryKeyPosition=" + this.f1809e + '}';
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f1810a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f1811b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f1812c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<String> f1813d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List<String> f1814e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f1810a = str;
            this.f1811b = str2;
            this.f1812c = str3;
            this.f1813d = Collections.unmodifiableList(list);
            this.f1814e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f1810a.equals(bVar.f1810a) && this.f1811b.equals(bVar.f1811b) && this.f1812c.equals(bVar.f1812c) && this.f1813d.equals(bVar.f1813d)) {
                return this.f1814e.equals(bVar.f1814e);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f1810a.hashCode() * 31) + this.f1811b.hashCode()) * 31) + this.f1812c.hashCode()) * 31) + this.f1813d.hashCode()) * 31) + this.f1814e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f1810a + "', onDelete='" + this.f1811b + "', onUpdate='" + this.f1812c + "', columnNames=" + this.f1813d + ", referenceColumnNames=" + this.f1814e + '}';
        }
    }

    static class c implements Comparable<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f1815a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f1816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f1817c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final String f1818d;

        c(int i, int i2, String str, String str2) {
            this.f1815a = i;
            this.f1816b = i2;
            this.f1817c = str;
            this.f1818d = str2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            int i = this.f1815a - cVar.f1815a;
            return i == 0 ? this.f1816b - cVar.f1816b : i;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f1819a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f1820b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<String> f1821c;

        public d(String str, boolean z, List<String> list) {
            this.f1819a = str;
            this.f1820b = z;
            this.f1821c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f1820b != dVar.f1820b || !this.f1821c.equals(dVar.f1821c)) {
                return false;
            }
            if (this.f1819a.startsWith("index_")) {
                return dVar.f1819a.startsWith("index_");
            }
            return this.f1819a.equals(dVar.f1819a);
        }

        public int hashCode() {
            return ((((this.f1819a.startsWith("index_") ? -1184239155 : this.f1819a.hashCode()) * 31) + (this.f1820b ? 1 : 0)) * 31) + this.f1821c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f1819a + "', unique=" + this.f1820b + ", columns=" + this.f1821c + '}';
        }
    }
}

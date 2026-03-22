package android.arch.b.b.b;

import android.database.Cursor;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, C0002a> f63b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<b> f64c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set<d> f65d;

    public a(String str, Map<String, C0002a> map, Set<b> set, Set<d> set2) {
        this.f62a = str;
        this.f63b = Collections.unmodifiableMap(map);
        this.f64c = Collections.unmodifiableSet(set);
        this.f65d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f62a == null ? aVar.f62a != null : !this.f62a.equals(aVar.f62a)) {
            return false;
        }
        if (this.f63b == null ? aVar.f63b != null : !this.f63b.equals(aVar.f63b)) {
            return false;
        }
        if (this.f64c == null ? aVar.f64c != null : !this.f64c.equals(aVar.f64c)) {
            return false;
        }
        if (this.f65d == null || aVar.f65d == null) {
            return true;
        }
        return this.f65d.equals(aVar.f65d);
    }

    public int hashCode() {
        return (((this.f63b != null ? this.f63b.hashCode() : 0) + ((this.f62a != null ? this.f62a.hashCode() : 0) * 31)) * 31) + (this.f64c != null ? this.f64c.hashCode() : 0);
    }

    public String toString() {
        return "TableInfo{name='" + this.f62a + "', columns=" + this.f63b + ", foreignKeys=" + this.f64c + ", indices=" + this.f65d + '}';
    }

    public static a a(android.arch.b.a.b bVar, String str) {
        return new a(str, c(bVar, str), b(bVar, str), d(bVar, str));
    }

    private static Set<b> b(android.arch.b.a.b bVar, String str) {
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
                        if (cVar.f74a == i2) {
                            arrayList.add(cVar.f76c);
                            arrayList2.add(cVar.f77d);
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

    private static Map<String, C0002a> c(android.arch.b.a.b bVar, String str) {
        Cursor cursorB = bVar.b("PRAGMA table_info(`" + str + "`)");
        HashMap map = new HashMap();
        try {
            if (cursorB.getColumnCount() > 0) {
                int columnIndex = cursorB.getColumnIndex("name");
                int columnIndex2 = cursorB.getColumnIndex("type");
                int columnIndex3 = cursorB.getColumnIndex("notnull");
                int columnIndex4 = cursorB.getColumnIndex("pk");
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(columnIndex);
                    map.put(string, new C0002a(string, cursorB.getString(columnIndex2), cursorB.getInt(columnIndex3) != 0, cursorB.getInt(columnIndex4)));
                }
            }
            return map;
        } finally {
            cursorB.close();
        }
    }

    private static Set<d> d(android.arch.b.a.b bVar, String str) {
        Cursor cursorB = bVar.b("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = cursorB.getColumnIndex("name");
            int columnIndex2 = cursorB.getColumnIndex("origin");
            int columnIndex3 = cursorB.getColumnIndex("unique");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                return null;
            }
            HashSet hashSet = new HashSet();
            while (cursorB.moveToNext()) {
                if ("c".equals(cursorB.getString(columnIndex2))) {
                    d dVarA = a(bVar, cursorB.getString(columnIndex), cursorB.getInt(columnIndex3) == 1);
                    if (dVarA == null) {
                        return null;
                    }
                    hashSet.add(dVarA);
                }
            }
            return hashSet;
        } finally {
            cursorB.close();
        }
    }

    private static d a(android.arch.b.a.b bVar, String str, boolean z) {
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

    /* JADX INFO: renamed from: android.arch.b.b.b.a$a, reason: collision with other inner class name */
    public static class C0002a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f68c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f69d;

        public C0002a(String str, String str2, boolean z, int i) {
            this.f66a = str;
            this.f67b = str2;
            this.f68c = z;
            this.f69d = i;
        }

        public boolean equals(Object obj) {
            boolean zEqualsIgnoreCase = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0002a c0002a = (C0002a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f69d != c0002a.f69d) {
                    return false;
                }
            } else if (a() != c0002a.a()) {
                return false;
            }
            if (!this.f66a.equals(c0002a.f66a) || this.f68c != c0002a.f68c) {
                return false;
            }
            if (this.f67b != null) {
                zEqualsIgnoreCase = this.f67b.equalsIgnoreCase(c0002a.f67b);
            } else if (c0002a.f67b != null) {
                zEqualsIgnoreCase = false;
            }
            return zEqualsIgnoreCase;
        }

        public boolean a() {
            return this.f69d > 0;
        }

        public int hashCode() {
            return (((this.f68c ? 1231 : 1237) + (((this.f67b != null ? this.f67b.hashCode() : 0) + (this.f66a.hashCode() * 31)) * 31)) * 31) + this.f69d;
        }

        public String toString() {
            return "Column{name='" + this.f66a + "', type='" + this.f67b + "', notNull=" + this.f68c + ", primaryKeyPosition=" + this.f69d + '}';
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f70a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f71b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f72c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<String> f73d;
        public final List<String> e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f70a = str;
            this.f71b = str2;
            this.f72c = str3;
            this.f73d = Collections.unmodifiableList(list);
            this.e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f70a.equals(bVar.f70a) && this.f71b.equals(bVar.f71b) && this.f72c.equals(bVar.f72c) && this.f73d.equals(bVar.f73d)) {
                return this.e.equals(bVar.e);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f70a.hashCode() * 31) + this.f71b.hashCode()) * 31) + this.f72c.hashCode()) * 31) + this.f73d.hashCode()) * 31) + this.e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f70a + "', onDelete='" + this.f71b + "', onUpdate='" + this.f72c + "', columnNames=" + this.f73d + ", referenceColumnNames=" + this.e + '}';
        }
    }

    static class c implements Comparable<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f74a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f75b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f76c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final String f77d;

        c(int i, int i2, String str, String str2) {
            this.f74a = i;
            this.f75b = i2;
            this.f76c = str;
            this.f77d = str2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            int i = this.f74a - cVar.f74a;
            if (i == 0) {
                return this.f75b - cVar.f75b;
            }
            return i;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f78a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f79b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<String> f80c;

        public d(String str, boolean z, List<String> list) {
            this.f78a = str;
            this.f79b = z;
            this.f80c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f79b != dVar.f79b || !this.f80c.equals(dVar.f80c)) {
                return false;
            }
            if (this.f78a.startsWith("index_")) {
                return dVar.f78a.startsWith("index_");
            }
            return this.f78a.equals(dVar.f78a);
        }

        public int hashCode() {
            int iHashCode;
            if (this.f78a.startsWith("index_")) {
                iHashCode = "index_".hashCode();
            } else {
                iHashCode = this.f78a.hashCode();
            }
            return (((this.f79b ? 1 : 0) + (iHashCode * 31)) * 31) + this.f80c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f78a + "', unique=" + this.f79b + ", columns=" + this.f80c + '}';
        }
    }
}

package b.a.e;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f1946a = new a() { // from class: b.a.e.a.1
        @Override // b.a.e.a
        public void a(File file) throws IOException {
            if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete " + file);
            }
        }

        @Override // b.a.e.a
        public boolean b(File file) {
            return file.exists();
        }

        @Override // b.a.e.a
        public long c(File file) {
            return file.length();
        }

        @Override // b.a.e.a
        public void a(File file, File file2) throws IOException {
            a(file2);
            if (!file.renameTo(file2)) {
                throw new IOException("failed to rename " + file + " to " + file2);
            }
        }
    };

    void a(File file) throws IOException;

    void a(File file, File file2) throws IOException;

    boolean b(File file);

    long c(File file);
}

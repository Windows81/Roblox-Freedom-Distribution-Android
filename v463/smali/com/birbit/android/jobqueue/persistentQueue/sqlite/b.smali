.class public Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b;,
        Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;,
        Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final c:Ljava/lang/StringBuilder;

.field final d:Landroid/database/sqlite/SQLiteDatabase;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:I

.field final h:Ljava/lang/String;

.field final i:I

.field final j:J

.field private k:Landroid/database/sqlite/SQLiteStatement;

.field private l:Landroid/database/sqlite/SQLiteStatement;

.field private m:Landroid/database/sqlite/SQLiteStatement;

.field private n:Landroid/database/sqlite/SQLiteStatement;

.field private o:Landroid/database/sqlite/SQLiteStatement;

.field private p:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJ)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    .line 35
    iput-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    iput-object p2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->g:I

    .line 38
    iput-object p3, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->f:Ljava/lang/String;

    .line 39
    iput-wide p7, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->j:J

    .line 40
    iput p6, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->i:I

    .line 41
    iput-object p5, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->h:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SELECT * FROM "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " WHERE "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p6, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object p6, p6, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " = ?"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object p2, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IN ( SELECT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->m:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object p2, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->n:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object p2, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = ?)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;[Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;)Ljava/lang/String;
    .locals 5

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object p0, p1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object p0, p1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  primary key "

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    array-length p0, p2

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p2, v1

    const-string v3, ", `"

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "` "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, " UNIQUE"

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    array-length p0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_3

    aget-object v2, p2, v1

    .line 61
    iget-object v3, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;

    if-eqz v3, :cond_2

    .line 62
    iget-object v3, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;

    const-string v4, ", FOREIGN KEY(`"

    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`) REFERENCES "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(`"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`) ON DELETE CASCADE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string p0, " );"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/StringBuilder;I)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "?"

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, ",?"

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 207
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot create placeholders for 0 items"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->k:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, " VALUES ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_0
    iget v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->g:I

    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->k:Landroid/database/sqlite/SQLiteStatement;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->k:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public varargs a(Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;Ljava/lang/String;Ljava/lang/Integer;[Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b;)Ljava/lang/String;
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FROM "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 187
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v0, " WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    array-length p1, p4

    const/4 p2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v2, p4, v0

    if-eqz p2, :cond_1

    .line 192
    iget-object p2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v3, " ORDER BY "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 194
    :cond_1
    iget-object p2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :goto_1
    iget-object p2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b;->a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b$a;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 200
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string p2, " LIMIT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    :cond_3
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b;)Ljava/lang/String;
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 158
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    array-length p1, p3

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p3, v2

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v4, " ORDER BY "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b;->a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v4, v4, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$b$a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 174
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string p3, " LIMIT "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE job_holder SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->j:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->k:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->l:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 97
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "job_holder_tags"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, " VALUES ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :goto_0
    iget v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->i:I

    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->l:Landroid/database/sqlite/SQLiteStatement;

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->l:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public c()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->p:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " != ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->p:Landroid/database/sqlite/SQLiteStatement;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->p:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public d()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->m:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 123
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, " VALUES ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :goto_0
    iget v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->g:I

    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->m:Landroid/database/sqlite/SQLiteStatement;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->m:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public e()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->n:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->n:Landroid/database/sqlite/SQLiteStatement;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->n:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public f()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->o:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v1, v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v1, v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->o:Landroid/database/sqlite/SQLiteStatement;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->o:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM job_holder"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->h()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

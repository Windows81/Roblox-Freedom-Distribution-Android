.class public Lcom/b/a/a/i/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field private d:Landroid/database/sqlite/SQLiteStatement;

.field private e:Ljava/lang/String;

.field private f:Landroid/database/sqlite/SQLiteStatement;

.field private g:Landroid/database/sqlite/SQLiteStatement;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(JLjava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/b/a/a/i/a/d;->i:I

    .line 19
    iput v0, p0, Lcom/b/a/a/i/a/d;->j:I

    .line 22
    iput-wide p1, p0, Lcom/b/a/a/i/a/d;->a:J

    .line 23
    iput-object p3, p0, Lcom/b/a/a/i/a/d;->b:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/b/a/a/i/a/b;)Landroid/database/sqlite/SQLiteStatement;
    .locals 8

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v4, -0x1

    .line 61
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_4

    .line 62
    iget-object v0, p2, Lcom/b/a/a/i/a/b;->c:Ljava/lang/StringBuilder;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    const-string v1, "SELECT max("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/b/a/a/i/a/a;->h:Lcom/b/a/a/i/a/b$c;

    iget-object v2, v2, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/b/a/a/i/a/d;->i:I

    if-eq v1, v4, :cond_0

    .line 67
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/b/a/a/i/a/a;->j:Lcom/b/a/a/i/a/b$c;

    iget-object v2, v2, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    iget v1, p0, Lcom/b/a/a/i/a/d;->j:I

    if-eq v1, v4, :cond_1

    .line 71
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/b/a/a/i/a/a;->k:Lcom/b/a/a/i/a/b$c;

    iget-object v2, v2, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    const-string v1, ") FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "job_holder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/i/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Lcom/b/a/a/i/a/d;->i:I

    if-eq v1, v4, :cond_2

    .line 81
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/b/a/a/i/a/a;->j:Lcom/b/a/a/i/a/b$c;

    iget-object v2, v2, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    :cond_2
    iget v1, p0, Lcom/b/a/a/i/a/d;->j:I

    if-eq v1, v4, :cond_3

    .line 86
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/b/a/a/i/a/a;->k:Lcom/b/a/a/i/a/b$c;

    iget-object v2, v2, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    :cond_3
    const-string v1, " ORDER BY 1 ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    .line 96
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    array-length v1, v1

    if-gt v0, v1, :cond_5

    .line 97
    iget-object v1, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .line 99
    :cond_5
    iget v0, p0, Lcom/b/a/a/i/a/d;->i:I

    if-eq v0, v4, :cond_6

    .line 100
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    iget v1, p0, Lcom/b/a/a/i/a/d;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :cond_6
    iget v0, p0, Lcom/b/a/a/i/a/d;->j:I

    if-eq v0, v4, :cond_7

    .line 104
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    iget v1, p0, Lcom/b/a/a/i/a/d;->j:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/StringBuilder;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->d:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 38
    const-string v0, "SELECT SUM(case WHEN "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    iget-object v1, v1, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is null then group_cnt else 1 end) from ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT count(*) group_cnt, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    iget-object v1, v1, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "job_holder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/i/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GROUP BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    iget-object v1, v1, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i/a/d;->d:Landroid/database/sqlite/SQLiteStatement;

    .line 54
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/b/a/a/i/a/d;->d:Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->d:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public a(Lcom/b/a/a/i/a/b;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 131
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/b/a/a/i/a/b$b;

    const/4 v3, 0x0

    new-instance v4, Lcom/b/a/a/i/a/b$b;

    sget-object v5, Lcom/b/a/a/i/a/a;->c:Lcom/b/a/a/i/a/b$c;

    sget-object v6, Lcom/b/a/a/i/a/b$b$a;->b:Lcom/b/a/a/i/a/b$b$a;

    invoke-direct {v4, v5, v6}, Lcom/b/a/a/i/a/b$b;-><init>(Lcom/b/a/a/i/a/b$c;Lcom/b/a/a/i/a/b$b$a;)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/b/a/a/i/a/b$b;

    sget-object v4, Lcom/b/a/a/i/a/a;->g:Lcom/b/a/a/i/a/b$c;

    sget-object v5, Lcom/b/a/a/i/a/b$b$a;->a:Lcom/b/a/a/i/a/b$b$a;

    invoke-direct {v3, v4, v5}, Lcom/b/a/a/i/a/b$b;-><init>(Lcom/b/a/a/i/a/b$c;Lcom/b/a/a/i/a/b$b$a;)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/b/a/a/i/a/b$b;

    sget-object v5, Lcom/b/a/a/i/a/a;->a:Lcom/b/a/a/i/a/b$c;

    sget-object v6, Lcom/b/a/a/i/a/b$b$a;->a:Lcom/b/a/a/i/a/b$b$a;

    invoke-direct {v4, v5, v6}, Lcom/b/a/a/i/a/b$b;-><init>(Lcom/b/a/a/i/a/b$c;Lcom/b/a/a/i/a/b$b$a;)V

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/b/a/a/i/a/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i/a/d;->h:Ljava/lang/String;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->d:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 156
    iput-object v1, p0, Lcom/b/a/a/i/a/d;->d:Landroid/database/sqlite/SQLiteStatement;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->f:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 160
    iput-object v1, p0, Lcom/b/a/a/i/a/d;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 164
    iput-object v1, p0, Lcom/b/a/a/i/a/d;->g:Landroid/database/sqlite/SQLiteStatement;

    .line 166
    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/b/a/a/i/a/d;->i:I

    .line 29
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Lcom/b/a/a/i/a/b;)Landroid/database/sqlite/SQLiteStatement;
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 112
    iget-object v1, p0, Lcom/b/a/a/i/a/d;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 113
    sget-object v1, Lcom/b/a/a/i/a/a;->h:Lcom/b/a/a/i/a/b$c;

    iget-object v2, p0, Lcom/b/a/a/i/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Lcom/b/a/a/i/a/b$b;

    const/4 v5, 0x0

    new-instance v6, Lcom/b/a/a/i/a/b$b;

    sget-object v7, Lcom/b/a/a/i/a/a;->h:Lcom/b/a/a/i/a/b$c;

    sget-object v8, Lcom/b/a/a/i/a/b$b$a;->a:Lcom/b/a/a/i/a/b$b$a;

    invoke-direct {v6, v7, v8}, Lcom/b/a/a/i/a/b$b;-><init>(Lcom/b/a/a/i/a/b$c;Lcom/b/a/a/i/a/b$b$a;)V

    aput-object v6, v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/b/a/a/i/a/b;->a(Lcom/b/a/a/i/a/b$c;Ljava/lang/String;Ljava/lang/Integer;[Lcom/b/a/a/i/a/b$b;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/a/i/a/d;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/b/a/a/i/a/d;->f:Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/b/a/a/i/a/d;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->f:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public b(Lcom/b/a/a/i/a/b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/b/a/a/i/a/b$b;

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/b/a/a/i/a/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i/a/d;->e:Ljava/lang/String;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/i/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/b/a/a/i/a/d;->j:I

    .line 33
    return-void
.end method
